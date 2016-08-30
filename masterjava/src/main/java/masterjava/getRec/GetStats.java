package masterjava.getRec;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import masterjava.db.PostgreSql;

public class GetStats {
    public int getLastId(String table, String host){
         PostgreSql pg = new PostgreSql();
         Integer maxId = 0;
            try (Connection conn = pg.connect("127.0.0.1", "5432", "netdebug", "postgres", "v0lkwe1s")){
                Statement stmt = null;
                stmt = conn.createStatement();
                try (ResultSet rs = stmt.executeQuery("select max(\"hostId\") as maxId from " + table + " where host = '" + host + "' group by host;")){
                    while (rs.next()) {
                        maxId = rs.getInt("maxId"); 
                    }
                }
            }   catch (Exception e) {
             System.out.println(e.getMessage());
             }
        return maxId;
    }
}