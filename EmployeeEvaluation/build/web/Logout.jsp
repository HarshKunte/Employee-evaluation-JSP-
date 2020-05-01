<%-- 
    Document   : Logout
    Created on : 11 Apr, 2019, 10:13:03 AM
    Author     : Harsh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>  
    </body>
    <%  
        session.invalidate();
        response.sendRedirect("Login.jsp");
    %>
</html>
