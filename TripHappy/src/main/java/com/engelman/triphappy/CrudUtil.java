package com.engelman.triphappy;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Corey
 */
import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public abstract class CrudUtil {
    public java.sql.Connection establishConnection() throws ClassNotFoundException{
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            java.sql.Connection dbConnection = 
            DriverManager.getConnection("jdbc:mysql://localhost:3306/e_store",
            "root", "Edinburgh12");
            return dbConnection;
            
        }catch(SQLException ex){
               System.err.println("SQL error occured while establishing db connection");
               ex.printStackTrace();
        }
        return null;
    }
}
