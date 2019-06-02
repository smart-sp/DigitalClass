<%-- 
    Document   : Chage_pass_db
    Created on : May 23, 2019, 10:09:09 AM
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
  <h1>Change Pass</h1>
                <form action="Chage_pass_check.jsp" method="post">
                    <input type="text" name="user" value="<%=session.getAttribute("user")%>"readonly/>
        <input type="pass" name="pass1"/>
        <input type="pass" name="pass2"/>

        <input type="submit">
        
        </form>
    </body>
</html>
