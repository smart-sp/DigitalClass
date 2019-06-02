<%-- 
    Document   : Logout
    Created on : May 23, 2019, 9:31:03 AM
    Author     : Jarvis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
session.invalidate();
response.sendRedirect("end.jsp");
%>
    </body>
</html>
