<%-- 
    Document   : editUserProfile
    Created on : Oct 7, 2013, 2:10:27 PM
    Author     : Corey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "e_store.crud.*" %>

<%

e_store.crud.User user = new e_store.crud.User();
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
        <a href="index.jsp">home</a>
        <form name="input" action="editUserProfileConfirm.jsp" method="post">
        First Name: <%= resultSet.getString("first_name") %> <input type="text" name="FirstName" value = <%= resultSet.getString("first_name") %>> <br/>
        Surname: <%= resultSet.getString("last_name") %><input type="text" name="Surname" value = <%= resultSet.getString("last_name") %>> <br/>
        Phone: <%= resultSet.getString("phone") %><input type="text" name="Phone" value = <%= resultSet.getString("phone") %>> <br/>
        Email: <%= resultSet.getString("email") %><input type="text" name="Email" value = <%= resultSet.getString("email") %>> <br/>
        <hr>
        <h4>Shipping Address:</h4>
        
        Address 1: <%= resultSet.getString("address1") %> <input type="text" name="Address1" value = <%= resultSet.getString("address1") %>> <br/>
        Address 2: <%= resultSet.getString("address2") %> <input type="text" name="Address2" value = <%= resultSet.getString("address2") %>> <br/>
        City: <%= resultSet.getString("city") %> <input type="text" name="City" value = <%= resultSet.getString("city") %>> <br/>
        State: <%= resultSet.getString("state") %> <input type="text" name="State" value = <%= resultSet.getString("state") %>> <br/>
        Postal Code: <%= resultSet.getString("postal_code") %> <input type="text" name="PostalCode" value = <%= resultSet.getString("postal_code") %>> <br/>
        Country: <%= resultSet.getString("country") %> <input type="text" name="Country" value = <%= resultSet.getString("country") %>> <br/>
        
        Credit Card: TODO
        <br/>
        <hr>
        <h4>Billing Address:</h4>
        
        Address: <%= resultSet.getString("billing_address") %> <input type="text" name="BillingAddress" value = <%= resultSet.getString("billing_address") %>> <br/>
        City: <%= resultSet.getString("billing_city") %> <input type="text" name="BillingCity" value = <%= resultSet.getString("billing_city") %>> <br/>
        State: <%= resultSet.getString("billing_state") %> <input type="text" name="BillingState" value = <%= resultSet.getString("billing_state") %>> <br/>
        Postal Code: <%= resultSet.getString("billing_post_code") %> <input type="text" name="BillingPostalCode value = <%= resultSet.getString("billing_post_code") %>"> <br/>
        Country: <%= resultSet.getString("billing_country") %> <input type="text" name="BillingCountry" value = <%= resultSet.getString("billing_country") %>> <br/>
        <input type="submit" value="Submit" title="Register">
        </form>
    </body>
</html>
