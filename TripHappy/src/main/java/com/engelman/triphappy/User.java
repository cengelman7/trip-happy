/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.engelman.triphappy;

import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;

/**
 *
 * @author Corey
 */
public class User extends CrudUtil{
    public void createUser(String email, String password){
        try{
            java.sql.Connection dbConnection = establishConnection();
            Statement sqlStatement = dbConnection.createStatement();
            sqlStatement.executeUpdate(
            "INSERT INTO customers (email,password) \n" +
            "VALUES('" + email + "', '" + password + "')"
            );
        }catch(SQLException ex){
            System.err.println("SQL error occured while executing insert");
            ex.printStackTrace();
        }catch(ClassNotFoundException ex){
            System.err.println("MySQL driver not found");
            ex.printStackTrace();
        }
    }
    
    public void modifyUserProfile(String firstName,
        String surname,String phone,
        String email,String address1,
        String address2,String city,
        String state,String postalCode,
        String country,String billingAddress,
        String billingCity,String billingState,
        String billingPostalCode,String billingCountry){
        
        try{
            java.sql.Connection dbConnection = establishConnection();
            Statement sqlStatement = dbConnection.createStatement();
            String qry = "UPDATE customers " +
            "SET first_name = '" + firstName + "', last_name = '" + surname +
            "', phone = '" + phone + "', email = '" + email + "', address1 = '" +
            address1 + "', address2 = '" + address2 + "', city = '" + city + 
            "', state= '" + state + "', postal_code = '" + postalCode + "', country = '" + country +
            "', billing_address = '" + billingAddress + "', billing_city = '" +
            billingCity + "', billing_state = '" + billingState + "', billing_post_code = '" +
            billingPostalCode + "', billing_country = '" + billingCountry + "' "+
            "WHERE email = '" + email + "'";
            
            sqlStatement.executeUpdate(qry);
 
        }catch(SQLException ex){
            System.err.println("SQL error occured while executing update statement");
            ex.printStackTrace();
        }catch(ClassNotFoundException ex){
            System.err.println("MySQL driver not found");
            ex.printStackTrace();
        }
    }
    
    public void deleteUser(String email){
        try{
            java.sql.Connection dbConnection = establishConnection();
            Statement sqlStatement = dbConnection.createStatement();
            sqlStatement.executeUpdate(
            "DELETE FROM customers \n" +
            "   WHERE email = '" + email + "'"
            );
        }catch(SQLException ex){
            System.err.println("SQL error occured while executing delete");
            ex.printStackTrace();
        }catch(ClassNotFoundException ex){
            System.err.println("MySQL driver not found");
            ex.printStackTrace();
        }
    }
    
    public ResultSet getUserProfile(String email){
        try{
            java.sql.Connection dbConnection = establishConnection();
            Statement sqlStatement = dbConnection.createStatement();
            ResultSet rs = sqlStatement.executeQuery(
            "SELECT * FROM customers \n" +
            "   WHERE email = '" + email + "'"
            );
            return rs;
        }catch(SQLException ex){
            System.err.println("SQL error occured while executing select");
            ex.printStackTrace();
        }catch(ClassNotFoundException ex){
            System.err.println("MySQL driver not found");
            ex.printStackTrace();
        }
        return null;
    }
}
