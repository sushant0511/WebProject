<%@page import="java.sql.ResultSet"%>
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
String pass=request.getParameter("pwd");
int flag=0;

try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
	Statement statement=connection.createStatement();
	ResultSet rs=statement.executeQuery("SELECT * FROM user");
	while(rs.next())
	{
		if(uname.equals(rs.getString(2))  && pass.equals(rs.getString(3)))
		{
			flag=1;
			session.setAttribute("uname", uname);
			break;
		}
	}
	if(flag==1)
	{
		response.sendRedirect("uppwd.jsp");
	}
	else
	{
		response.sendRedirect("index.html");
	}
}

catch(Exception e)
{
	System.out.println(e);
}

%>



</body>
</html>