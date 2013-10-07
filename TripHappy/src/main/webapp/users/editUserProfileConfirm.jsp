<%-- 
    Document   : editUserProfileConfirm
    Created on : Oct 7, 2013, 3:23:46 PM
    Author     : Corey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "com.engelman.triphappy.*" %>
<%
User user = new User();
user.modifyUserProfile(request.getParameter("FirstName"),
        request.getParameter("Surname"),request.getParameter("Phone"),
        request.getParameter("Email"),request.getParameter("Address1"),
        request.getParameter("Address2"),request.getParameter("City"),
        request.getParameter("State"),request.getParameter("PostalCode"),
        request.getParameter("Country"),request.getParameter("BillingAddress"),
        request.getParameter("BillingCity"),request.getParameter("BillingState"),
        request.getParameter("BillingPostalCode"),request.getParameter("BillingCountry"));

String[] strs = {request.getParameter("FirstName"),
        request.getParameter("Surname"),request.getParameter("Phone"),
        request.getParameter("Email"),request.getParameter("Address1"),
        request.getParameter("Address2"),request.getParameter("City"),
        request.getParameter("State"),request.getParameter("PostalCode"),
        request.getParameter("Country"),request.getParameter("BillingAddress"),
        request.getParameter("BillingCity"),request.getParameter("BillingState"),
        request.getParameter("BillingPostalCode"),request.getParameter("BillingCountry")};
String str = "";
for(String s: strs){
    str += s + ", ";
}

    //String redirectURL = "editUserProfile.jsp"; 
    //response.sendRedirect(redirectURL);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p> <%=str%> </p>
    </body>
</html>
