<%-- 
    Document   : modifyShipperProfile
    Created on : Oct 4, 2013, 5:44:08 PM
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
        <form name="input" action="modifyShipperConfirm.jsp" method="post">
        Company Name: <input type="text" name="CompanyName"> <br/>
        New Company Name: <input type="text" name="newCompanyName"> <br/>
        New Phone: <input type="text" name="newPhone"> <br/>
        <input type="submit" value="Submit">
        </form>
    </body>
</html>
