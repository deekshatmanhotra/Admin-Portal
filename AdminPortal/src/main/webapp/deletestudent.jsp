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
	String id = request.getParameter("id");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/DataEx", "root", "root69");
	String s = "Delete from addstudent where id = " +id;

	PreparedStatement p = cn.prepareStatement(s);

	int i = p.executeUpdate(s);
	
	if(i > 0){
		response.sendRedirect("adminpage.html");
	}
	%>
	

</body>
</html>