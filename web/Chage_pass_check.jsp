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
String pold=request.getParameter("pass1");
String pnew=request.getParameter("pass2");

System.out.println(u+" "+pold+" "+pnew);
Statement st=con.createStatement();
String sql0="select * from login where name='"+u+"' and pass='"+pold+"'";

String sql1="update login set pass='"+pnew+"' where name='"+u+"'";


ResultSet rs=st.executeQuery(sql0);
int rs1;
if(rs!=null)
{
rs1=st.executeUpdate(sql1);

    if(rs1!=0)
    {
out.print("<h1>Update Pass....!!!!</h1>");

    }else
    {
out.print("<h1>Not Update Pass....!!!!</h1>");

    }
}
else
{
out.print("<h1>Wrong User and Pass....!!!!</h1>");
}


%>
