/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package masterjava.main;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import masterjava.db.GetConnection;
import masterjava.db.PostgreSql;

/**
 *
 * @author williamvolkweis
 */
public class Main {
    public static void main(String[] args) throws SQLException {
        System.out.println("Abre Conexao");
        PostgreSql pg = new PostgreSql();
        GetConnection c = new GetConnection();
        try (Connection conn = pg.connect("127.0.0.1", "5432", "netdebug","postgres", "v0lkwe1s")){
            Statement stmt = null;
            stmt = conn.createStatement();
            try (ResultSet rs = stmt.executeQuery("select * from users")){
                while(rs.next()){
                    System.out.println(rs.getString("\"userName\""));
                }
            }
    }
}
