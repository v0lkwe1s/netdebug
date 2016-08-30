package masterjava.db;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class OpenFile {
    
    public List importFile(String filePath) {
        String linha = new String();
        List<String> linhas = new ArrayList<>();
        File file = new File(filePath);
        try {
            Scanner leitor = new Scanner(file);
            while(leitor.hasNext()){
                linha = leitor.nextLine();
                linhas.add(linha);
            }
            //debug
            //for (String linha1 : linhas) {
            //    System.out.println(linha1);
            //}
        }catch(FileNotFoundException e){
            
        }
        return linhas;
    }
}