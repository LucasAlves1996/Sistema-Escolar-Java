package Escola;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
    
    public Connection getConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost/escola", "root", "");
        }catch(Exception e){
            throw new RuntimeException("Erro 1: "+e);
        }
    }
    
}
