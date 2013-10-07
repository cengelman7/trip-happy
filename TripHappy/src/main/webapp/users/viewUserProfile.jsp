<%-- 
    Document   : viewUserProfile
    Created on : Oct 6, 2013, 4:50:16 PM
    Author     : Corey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "com.engelman.triphappy.*" %>

<%

User user = new User();
java.sql.ResultSet resultSet = user.getUserProfile("cde7825@gmail.com");

if(resultSet != null){
    resultSet.first();
}else{
    //redirect to error page
}
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h4>Contact Info:</h4>
        <table
            <tr><td><b>First Name:</b> <%= resultSet.getString("first_name") %> </td></tr>
            <tr><td><b>Surname:</b> <%= resultSet.getString("last_name") %></td></tr>
            <tr><td><b>Phone:</b> <%= resultSet.getString("phone") %></td></tr>
            <tr><td><b>Email:</b> <%= resultSet.getString("email") %></td></tr>
        </table>
        <hr>
        <h4>Shipping Address: </h4>
        
        <table>
            <tr><td><b>Address 1:</b> <%= resultSet.getString("address1") %> </td></tr>
            <tr><td><b>Address 2:</b> <%= resultSet.getString("address2") %> </td></tr>
            <tr><td><b>City:</b> <%= resultSet.getString("city") %></td></tr>
            <tr><td><b>State:</b> <%= resultSet.getString("state") %></td></tr>
            <tr><td><b>Postal Code:</b> <%= resultSet.getString("postal_code") %> </td></tr>
            <tr><td><b>Country:</b> <%= resultSet.getString("country") %> </td></tr>
        </table>
        Credit Card: TODO
        <br/>
        <hr>
        <h4>Billing Address:</h4>
        <table>
            <tr><td><b>Address:</b> <%= resultSet.getString("billing_address") %> </td></tr>
            <tr><td><b>City:</b> <%= resultSet.getString("billing_city") %> </td></tr>
            <tr><td><b>State:</b> <%= resultSet.getString("billing_state") %></td></tr>
            <tr><td><b>Postal Code:</b> <%= resultSet.getString("billing_post_code") %></td></tr>
            <tr><td><b>Country:</b> <%= resultSet.getString("billing_country") %> </td></tr>
        </table>
    </body>
</html>
