<%-- 
    Document   : modifyShipperConfirm
    Created on : Oct 4, 2013, 5:46:16 PM
    Author     : Corey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "com.engelman.triphappy.*" %>


<%
String companyName = request.getParameter("CompanyName");
String newCompanyName = request.getParameter("newCompanyName");
String newCompanyPhone = request.getParameter("newPhone");
Shipper s = new Shipper();
s.modifyShipperProfile(companyName,newCompanyName,newCompanyPhone);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modification Confirmed</title>
    </head>
    <body>
        <a href="index.jsp">home</a>
        <h1>Profile for shipper <b></b> has been modified. See changes below for details.</h1>
        <h6>Old Profile</h6>
        <h6>Company Name:</h6> <%= companyName%>
        <h6>Company Phone:</h6> TODO add old phone
        <h6>New Profile</h6>
        <h6>Company Name:</h6> <%= newCompanyName%>
        <h6>Company Phone:</h6> <%= newCompanyPhone%>
    </body>
</html>
