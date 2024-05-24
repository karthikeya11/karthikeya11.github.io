<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<style>
b{color:green;}
</style>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
out.print("<b>Welcome ADMIN!!!</b>"+"<br/>");
Statement st =con.createStatement();
ResultSet resultSet = null;
}
catch(Exception e)
{
	out.print("Exception is: "+e);
}
%>

</body>
</html>