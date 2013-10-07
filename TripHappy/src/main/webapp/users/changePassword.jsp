<%-- 
    Document   : changePassword
    Created on : Oct 6, 2013, 6:48:51 PM
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
        Password: <input type="password" name="Password"> <br/>
        New Password: <input type="password" name="NewPassword"> <br/>
        Re-enter New Password: <input type="password" name="PasswordReEnter"> <br/>
        <input type="submit" value="Submit" title="Register">
        </form>
    </body>
</html>
