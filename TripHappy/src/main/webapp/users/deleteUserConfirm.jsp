<%-- 
    Document   : deleteUserConfirm
    Created on : Oct 6, 2013, 6:38:16 PM
    Author     : Corey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "com.engelman.triphappy.*" %>

<%
String email = request.getParameter("Email");
User user = new User();
user.deleteUser(email);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="../index.jsp">home</a>
        <p>User <%= email %> has been deleted.</p>
    </body>
</html>
