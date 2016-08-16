/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package masterjava.db;

import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;


/**
 *
 * @author williamvolkweis
 */
public class GetConnection {
    
        private String host = null;
        private String user = null;
        private String pass = null;
        private String port = null;
        private String database = null;    

    public String getHost() {
        return host;
    }

    public void setHost(String host) {
        this.host = host;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getPort() {
        return port;
    }

    public void setPort(String port) {
        this.port = port;
    }

    public String getDatabase() {
        return database;
    }

    public void setDatabase(String database) {
        this.database = database;
    }
    
    public void parametros(){
       
        OpenFile f = new OpenFile();
        List<String> linhas = new ArrayList<>();

        linhas = f.importFile(System.getProperty("user.dir")+ "/config");
        if (linhas.isEmpty()) {
            JOptionPane.showMessageDialog(null, "Arquivo de configuração não encontrado", "Erro!!!", JOptionPane.ERROR_MESSAGE);
        }
        else if (!linhas.isEmpty()){
            String[] parametro = null;
            for (int i = 0; i < linhas.size(); i++) {
                parametro = linhas.get(i).split(";");
                for (int j = 0; j < parametro.length; j++) {
                    if (parametro[0].equalsIgnoreCase("ipServidor")){
                       this.setHost(parametro[1]);
                    }
                    if (parametro[0].equalsIgnoreCase("dbUser")){
                        this.setUser(parametro[1]);
                    }
                    if (parametro[0].equalsIgnoreCase("dbPass")){
                        this.setPass(parametro[1]);
                    }
                    if (parametro[0].equalsIgnoreCase("dataBase")){
                        this.setDatabase(parametro[1]);
                    }
                    if (parametro[0].equalsIgnoreCase("port")){
                        this.setPort(parametro[1]);
                    }
                }
            }
        }
    }
}
