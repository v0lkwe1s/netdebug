/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package masterjava.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author volkweis
 */
public class PostgreSql {
       
    public static Connection connect(String host, String port, String database, String user, String pass){
        Connection conn = null;
        try{
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection("jdbc:postgresql://" + host + ":" + port + "/" + database , user, pass);
        } catch (ClassNotFoundException | SQLException | NullPointerException e){
            JOptionPane.showMessageDialog(null, "Siga estes passos para resolver o problema \n\n"
                    + "Verifique se o computador está conectado! \n"
                    + "Verifique se o servidor está ligado! \n"
                    + " \t\t Acione o suporte \n"
                    + "", "Erro no acesso ao Banco de Dados", JOptionPane.ERROR_MESSAGE);
        }
        return conn;
    }
    
    public PostgreSql() {
        
    }
}
