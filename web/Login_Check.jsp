<%-- 
    Document   : Login_Check
    Created on : May 23, 2019, 9:18:20 AM
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
    response.setHeader("cache-control","no-cache,no-store,must-revalidate");

    String a=request.getParameter("text1");
String b=request.getParameter("text2");

if(a.equals("Admin")&& b.equals("Admin"))
{
out.write("<h1> LOgin Done....!!!</h1>");
session.setAttribute("user",a);
response.sendRedirect("login.jsp");
}
else
{
out.write("<h1> LOgin Fail....!!!</h1>");
}
%>
    </body>
</html>
