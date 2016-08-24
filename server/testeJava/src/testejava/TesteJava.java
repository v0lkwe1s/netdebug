/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testejava;

import java.io.*;
import java.net.*;

/**
 *
 * @author williamvolkweis
 */
public class TesteJava {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException {
        Integer i =0;
        while (true) {
            i++;
            String sentence;
            String modifiedSentence;
            BufferedReader inFromUser = new BufferedReader(new InputStreamReader(System.in));

            Socket clientSocket = new Socket("127.0.0.1", 1234);
            DataOutputStream outToServer = new DataOutputStream(clientSocket.getOutputStream());
            DataInputStream inFromServer = new DataInputStream(clientSocket.getInputStream());

            //sentence = inFromUser.readLine();
            outToServer.writeBytes("teste cliente \n");
            modifiedSentence = inFromServer.readLine();
            
            System.out.println(i + " - " + modifiedSentence);
            clientSocket.close();
//            try {
//                Thread.sleep(1000);
//             } catch (Exception e) {
//                e.printStackTrace();
//             }
        }
    }
    
}
