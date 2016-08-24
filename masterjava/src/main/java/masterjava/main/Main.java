package masterjava.main;

import java.io.*;
import java.net.*;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import masterjava.db.PostgreSql;
import masterjava.getRec.GetStats;
import masterjava.lib.Json;
import masterjava.model._class;


public class Main {
  public static void main (String[] args) {
    try {
      ServerSocket server = new ServerSocket(58666);
      while (true) {
        Socket client = server.accept();
        EchoHandler handler = new EchoHandler(client);
        handler.start();
      }
    }
    catch (Exception e) {
      System.err.println("Exception caught:" + e);
    }
  }
}

class EchoHandler extends Thread {
  Socket client;
  EchoHandler (Socket client) {
    this.client = client;
  }

  public void run () {
    try {
      BufferedReader reader = new BufferedReader(new InputStreamReader(client.getInputStream()));
      PrintWriter writer = new PrintWriter(client.getOutputStream(), true);
      //writer.println("[type 'bye' to disconnect]");
      while (true) {
        String line = reader.readLine();
          System.out.println(line);
        if (line.equalsIgnoreCase("get|disk|lastId")){
            GetStats gs = new GetStats();
            System.out.println(gs.getLastId("disk", "hostname"));
            String response = String.valueOf(gs.getLastId("disk", "hostname"));
            response+="\n";
            writer.println(); 
        } 
        if (line.contains("))))))))))")){
            Json js = new Json();
            ArrayList<_class> disk = new ArrayList<_class>();
            disk = js.getObjFromJson(line.toString());
            for (_class object : disk) {
                String strDisk = "{\"disk\":";
                strDisk+=object.getJson().toString();
                strDisk+="}";
                PostgreSql pg = new PostgreSql();
                try (Connection conn = PostgreSql.connect("127.0.0.1", "5432", "netdebug", "postgres", "v0lkwe1s")){
                Statement stmt = null;
                stmt = conn.createStatement();
                String sql ="insert into disk (host, \"hostId\", date, stat) values ('"
                        + "" +object.getHost()+ "',"
                        + " " + object.getHostId() +""
                        + ",' " + object.getDate()+"'"
                        + ",' " + strDisk +"'"
                        + ");";
                    //System.out.println(sql);
                stmt.executeUpdate(sql);
            }   catch (SQLException ex) {   
                    Logger.getLogger(EchoHandler.class.getName()).log(Level.SEVERE, null, ex);
                }
            writer.println("done");
        }
      }
    }
    }
    
    catch (Exception e) {
      System.err.println("Exception caught: client disconnected.");
    }
    finally {
      try { 
          client.close();
      } catch (Exception e ){
          ;
      } }
    }
}
