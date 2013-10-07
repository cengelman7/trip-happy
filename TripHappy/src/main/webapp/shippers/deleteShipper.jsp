<%-- 
    Document   : deleteShipper
    Created on : Oct 4, 2013, 5:28:29 PM
    Author     : Corey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Shipper</title>
    </head>
    <body>
        <a href="index.jsp">home</a>
        <form name="input" action="deleteShipperConfirm.jsp" method="post">
        Company Name: <input type="text" name="CompanyName"> <br/>
        <input type="submit" value="Submit">
        </form>
    </body>
</html>
