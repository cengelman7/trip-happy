<%-- 
    Document   : registerUser
    Created on : Oct 6, 2013, 4:49:13 PM
    Author     : Corey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="index.jsp">home</a>
        <form name="input" action="registerUserConfirm.jsp" method="post">
        Email: <input type="text" name="Email"> <br/>
        Password: <input type="password" name="Password"> <br/>
        Re-enter Password: <input type="password" name="PasswordReEnter"> <br/>
        <input type="submit" value="Submit" title="Register">
        </form>
    </body>
</html>
