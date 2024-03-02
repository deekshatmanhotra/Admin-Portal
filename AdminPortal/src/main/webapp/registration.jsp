<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
	
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/DataEx","root", "root69");
	String s = "insert into registraton values(?, ?, ?)";
	PreparedStatement p = cn.prepareStatement(s);
	
	p.setString(1, name);
	p.setString(2, email);
	p.setString(3, password);
	
	int i = p.executeUpdate();
	
	if(i > 0){
		
		response.sendRedirect("login.html");
	}
	
	%>

</body>
</html>