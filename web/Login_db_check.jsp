<%-- 
    Document   : Login_db_check.jsp
    Created on : May 23, 2019, 9:48:39 AM
    Author     : Jarvis
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%

    Connection con;
Class.forName("oracle.jdbc.driver.OracleDriver");

con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");  
String u=request.getParameter("user");
String p=request.getParameter("pass");
System.out.println(u+" "+p);
Statement st=con.createStatement();
String sql="select * from login where name='"+u+"' and pass='"+p+"'";

ResultSet rs=st.executeQuery(sql);

if(rs!=null)
{
session.setAttribute("user",u);
    out.print("<h1>Login done....!!!!</h1>");
out.print("<a href='Chage_pass_db.jsp'>Change pass</a>");
out.print("<a href='show_users.jsp'>show users</a>");
out.print("<a href='Logout.jsp'>Logout</a>");
}
else
{
out.print("<h1>Login fail....!!!!</h1>");
}


%>
