<%-- 
    Document   : registerShipperConfirm
    Created on : Oct 4, 2013, 3:50:12 PM
    Author     : Corey
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "com.engelman.triphappy.*" %>

<%
String companyName = request.getParameter("CompanyName");
String companyPhone = request.getParameter("Phone");
Shipper s = new Shipper();
s.createShipper(companyName,companyPhone);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Confirmation</title>
    </head>
    <body>
        <a href="index.jsp">home</a>
        <h1>Registration Confirmed!</h1>
        <h6>Company Name:</h6> <%= companyName%>
        <h6>Company Phone:</h6> <%= companyPhone%>
    </body>
</html>
