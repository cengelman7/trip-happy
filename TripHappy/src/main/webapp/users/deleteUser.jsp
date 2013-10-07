<%-- 
    Document   : deleteUser
    Created on : Oct 6, 2013, 4:49:32 PM
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
        <a href="../index.jsp">home</a>
        <form name="input" action="deleteUserConfirm.jsp" method="post">
        Email: <input type="text" name="Email"> <br/>
        <input type="submit" value="Submit" title="Delete">
        </form>
    </body>
</html>
