/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package masterjava.getRec;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import masterjava.db.PostgreSql;

/**
 *
 * @author williamvolkweis
 */
public class GetStats {
    public int getLastId(String table, String host){
         PostgreSql pg = new PostgreSql();
            try (Connection conn = pg.connect("127.0.0.1", "5432", "netdebug", "postgres", "v0lkwe1s")){
                Statement stmt = null;
                stmt = conn.createStatement();
                try (ResultSet rs = stmt.executeQuery("select max(\"hostId\") from " + table + " where host = " + host + " ;")){
                    while (rs.next()) {
                        System.out.println(rs.getInt("id"));
                    }
                }
            }   catch (Exception e) {
             System.out.println(e.getMessage());
             }
        return 0;
    }
}
