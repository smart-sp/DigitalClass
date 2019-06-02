<%-- 
    Document   : login
    Created on : May 23, 2019, 9:11:33 AM
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
if(session.getAttribute("user")!=null)
{

%>
<h1>Welcome User:<%=session.getAttribute("user")%></h1>
<a href="Chage_pass_db.jsp">Logout</a>
<a href="Logout.jsp">Logout</a>
<%
}
%>

    </body>
</html>
