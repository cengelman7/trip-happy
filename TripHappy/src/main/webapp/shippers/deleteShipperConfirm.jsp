<%-- 
    Document   : deleteShipperConfirm
    Created on : Oct 4, 2013, 5:30:15 PM
    Author     : Corey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "com.engelman.triphappy.*" %>


<%
String companyName = request.getParameter("CompanyName");
Shipper s = new Shipper();
s.deleteShipper(companyName);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Confirmed</title>
    </head>
    <body>
        <a href="index.jsp">home</a>
        <h1><%= companyName %> has been deleted.</h1>
    </body>
</html>
