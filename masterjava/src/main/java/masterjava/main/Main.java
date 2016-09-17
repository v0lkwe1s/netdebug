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
      if (e.getMessage() != null ) System.err.println(e.getMessage());
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
            while (true) {
                String line = reader.readLine();
                if (line.equalsIgnoreCase("get;disk;lastId")){
                    String param[] = line.toString().split(";");
                    GetStats gs = new GetStats();
                    String response = String.valueOf(gs.getLastId("disk", "hostname"));
                    response+="\n";
                    writer.println(response);
                } else if (line.contains("\"host\" :[{\"id\"")){
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
                            stmt.executeUpdate(sql);
                        } catch (SQLException ex) {   
                            Logger.getLogger(EchoHandler.class.getName()).log(Level.SEVERE, null, ex);
                        }
                    writer.println("done");
                    }
                } else {
                    
                    System.out.println(line);
                    writer.println("ok");
                } 
            }
        } catch (Exception e) {
            if (e.getMessage() != null ) System.err.println(e.getMessage());
        } finally {
            try { 
                client.close();
            } catch (Exception e ){
                if (e.getMessage() != null ) System.err.println(e.getMessage());
            } 
        }
    }
}
