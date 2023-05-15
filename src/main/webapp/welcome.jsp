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
String un=session.getAttribute("uname").toString();
out.println("Welcome "+un);


%>

<form action="uppwd.jsp">
username<input type="text" name="un"> 
New Password <input type="password" name="newp">
<input type="submit" value="UpdatePassword">
</form>





</body>
</html>