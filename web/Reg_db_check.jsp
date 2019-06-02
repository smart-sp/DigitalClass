<%-- 
    Document   : Reg_db_check
    Created on : May 23, 2019, 10:04:21 AM
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
String sql="insert into login values('"+u+"','"+p+"')";

int rs=st.executeUpdate(sql);

if(rs!=0)
{
out.print("<h1>Reg done....!!!!</h1>");
out.print("<a href='Login_DB.jsp'>Click to Login</a>");
}
else
{
out.print("<h1>Reg fail....!!!!</h1>");
}


%>
