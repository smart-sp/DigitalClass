<%-- 
    Document   : show_users
    Created on : May 23, 2019, 10:39:34 AM
    Author     : Jarvis
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<table>
    <tr>
        <td> Name </td>
        <td> Pass </td>
    </tr>

        <%

    Connection con;
Class.forName("oracle.jdbc.driver.OracleDriver");

con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");  
String u=(String)session.getAttribute("user");

System.out.println(u);
Statement st=con.createStatement();
String sql0="select * from login where name='"+u+"'";
ResultSet rs=st.executeQuery(sql0);
while(rs.next())
{
%>
    
<tr>
        <td> <%=rs.getString("name")%> </td>
        <td> <%=rs.getString("pass")%> </td>
    </tr>
    
    <%
}
    %>
 </table>       
    </body>
</html>
