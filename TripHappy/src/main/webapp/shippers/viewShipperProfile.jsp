<%-- 
    Document   : viewShipper
    Created on : Oct 6, 2013, 3:27:36 PM
    Author     : Corey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "com.engelman.triphappy.*" %>

<%
String companyName = request.getParameter("CompanyName");
Shipper s = new Shipper();
ResultSet resultSet = s.getShipperProfile(companyName);

if(resultSet != null){
    resultSet.first();
}else{
    //redirect to error page
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%= resultSet.getString("company_name") %> Shipper Profile</h1><br/>
        <b>Company Name:</b> <%= resultSet.getString("company_name") %><br/>
        <b>Phone:</b> <%= resultSet.getString("phone") %><br/>
    </body>
</html>
