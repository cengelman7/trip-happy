<%-- 
    Document   : viewShippersList
    Created on : Oct 6, 2013, 3:27:48 PM
    Author     : Corey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "com.engelman.triphappy.*" %>

<%
String companyName = request.getParameter("CompanyName");
Shipper s = new Shipper();
ResultSet resultSet = s.getAllShipperProfiles();

if(resultSet== null){
    //error redirect
}

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr>
                <th>Company Name</th>
                <th>Phone</th>
            </tr>
        <% while(resultSet.next()){ %>
            <tr>
                <td><%= resultSet.getString("company_name") %></td>
                <td> <%= resultSet.getString("phone") %></td>
            </tr>
        <% } %>
        </table>
    </body>
</html>
