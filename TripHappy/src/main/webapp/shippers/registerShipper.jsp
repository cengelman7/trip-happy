<%-- 
    Document   : createShipper
    Created on : Oct 4, 2013, 3:45:41 PM
    Author     : Corey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Shipper</title>
    </head>
    <body>
        <a href="index.jsp">home</a>
        <form name="input" action="registerShipperConfirm.jsp" method="post">
        Company Name: <input type="text" name="CompanyName"> <br/>
        Phone: <input type="text" name="Phone"> <br/>
        <input type="submit" value="Submit">
        </form>
    </body>
</html>
