<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Received Orders</title>
<style>
div
{
	font-size:35px;
	color:red;
}

</style>
</head>
<body bgcolor="lightsteelblue">
<%@ page import="java.sql.*" %>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
out.print("<h1><b>Your orders fetched successfully....</b></h1>"+"<br/>");
Statement st =con.createStatement();
ResultSet resultSet = null;
String sql ="select * from orders;";
resultSet = st.executeQuery(sql);
	out.print("<h1>Total Current orders are as follows-</h1>"+"<br/>"+"<br/>");
	while(resultSet.next())
	{
		out.print("<br/>");
		out.print("<b><u>Customer Name</u>:</b> "+resultSet.getString("name")+", "+"&nbsp"+"&nbsp"+"&nbsp");
		out.print("<b>Order(s): </b>"+resultSet.getString("order")+", "+"&nbsp"+"&nbsp"+"&nbsp");
		out.print("<b>Delivery Address :</b> "+resultSet.getString("address")+",  "+"&nbsp"+"&nbsp"+"&nbsp");
		out.print("<b>Contact Number : </b>"+resultSet.getString("mobile")+". "+"&nbsp");
		out.print("<br/>"+"<br/>");
		out.print("------------------------------------------------------------------------------------------------------------");
		out.print("------------------------------------------------------------------------------------------------------------");
	}
}
catch(Exception e)
{
	
	out.print("<b>OOPS!! There is an Exception as: </b>"+e+"<br/>");
	out.print("<div>Please, try again later!!</div>");
}
%>

</body>
</html>