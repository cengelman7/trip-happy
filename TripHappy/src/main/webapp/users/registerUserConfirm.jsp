<%-- 
    Document   : registerUserConfirm
    Created on : Oct 6, 2013, 4:54:00 PM
    Author     : Corey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "com.engelman.triphappy.*" %>

<%
String email = request.getParameter("Email");
boolean pwdMatch = request.getParameter("Password").equals(request.getParameter("PasswordReEnter"));
User user = new User();
user.createUser(email,request.getParameter("Password"));
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="index.jsp">home</a>
        <h1>Registration Confirmed!</h1>
        <p> An account has been created and a confirmation email sent to <%= email%>. </p>
    </body>
</html>
