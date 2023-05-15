<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String uname=request.getParameter("un");

try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
	Statement statement=connection.createStatement();
	String query="DELETE FROM `project`.`user` WHERE(`username` = '"+uname+"')";
	statement.executeUpdate(query);
	response.sendRedirect("index.html");
}

catch(Exception e)
{
	System.out.println(e);
}

%>



</body>
</html>