/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.engelman.triphappy;

import com.mysql.jdbc.Driver;
import java.sql.*;
import javax.sql.*;

/**
 *
 * @author Corey
 */
public class Shipper extends CrudUtil{
    public void createShipper(String companyName, String companyPhone){
        try{
            java.sql.Connection dbConnection = establishConnection();
            Statement sqlStatement = dbConnection.createStatement();
            sqlStatement.executeUpdate(
            "INSERT INTO shippers (company_name, phone) \n" +
            "VALUES('" + companyName + "', '" + companyPhone + "')"
            );
        }catch(SQLException ex){
            System.err.println("SQL error occured while executing insert");
            ex.printStackTrace();
        }catch(ClassNotFoundException ex){
            System.err.println("MySQL driver not found");
            ex.printStackTrace();
        }
    }
    
    public void deleteShipper(String companyName){
        try{
            java.sql.Connection dbConnection = establishConnection();
            Statement sqlStatement = dbConnection.createStatement();
            sqlStatement.executeUpdate(
            "DELETE FROM shippers \n" +
            "   WHERE company_name = '" + companyName + "'"
            );
        }catch(SQLException ex){
            System.err.println("SQL error occured while executing delete statement");
            ex.printStackTrace();
        }catch(ClassNotFoundException ex){
            System.err.println("MySQL driver not found");
            ex.printStackTrace();
        }
    }
    
    public void modifyShipperProfile(String companyName, String newCompanyName,
            String newCompanyPhone){
        try{
            java.sql.Connection dbConnection = establishConnection();
            Statement sqlStatement = dbConnection.createStatement();
            sqlStatement.executeUpdate(
            "UPDATE shippers \n" +
            "SET company_name = '" + newCompanyName + "', phone = '" + 
            newCompanyPhone +"'\n" +
            "WHERE company_name = '" + companyName + "'"
            );
        }catch(SQLException ex){
            System.err.println("SQL error occured while executing update statement");
            ex.printStackTrace();
        }catch(ClassNotFoundException ex){
            System.err.println("MySQL driver not found");
            ex.printStackTrace();
        }
    }
    
    public ResultSet getShipperProfile(String companyName){
        try{
            java.sql.Connection dbConnection = establishConnection();
            Statement sqlStatement = dbConnection.createStatement();
            ResultSet resultSet = sqlStatement.executeQuery("SELECT * "
                    + "FROM shippers WHERE company_name = 'UPS'");
            
            return resultSet;
        }catch(SQLException ex){
            System.err.println("SQL error occured while executing select statement");
            ex.printStackTrace();
        }catch(ClassNotFoundException ex){
            System.err.println("MySQL driver not found");
            ex.printStackTrace();
        }
        return null;
    }

    public ResultSet getAllShipperProfiles(){
        try{
            java.sql.Connection dbConnection = establishConnection();
            Statement sqlStatement = dbConnection.createStatement();
            ResultSet resultSet = sqlStatement.executeQuery("SELECT * "
                    + "FROM shippers WHERE company_name IS NOT NULL");
            
            return resultSet;
        }catch(SQLException ex){
            System.err.println("SQL error occured while executing select statement");
            ex.printStackTrace();
        }catch(ClassNotFoundException ex){
            System.err.println("MySQL driver not found");
            ex.printStackTrace();
        }
        return null;
    }
}
