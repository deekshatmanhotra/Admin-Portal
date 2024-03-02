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
	String name = request.getParameter("name");
	String number = request.getParameter("number");
	String email = request.getParameter("email");
	String dob = request.getParameter("dob");
	String course = request.getParameter("course");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/DataEx","root", "root69");
	String s = "Update addstudent set id=?,name=?,number=?,email=?,dob=?,course=? where id="+id;
	PreparedStatement p = cn.prepareStatement(s);
	
	p.setString(1, id);
	p.setString(2, name);
	p.setString(3, number);
	p.setString(4, email);
	p.setString(5, dob);
	p.setString(6, course);
	
	int i = p.executeUpdate();
	
	if(i > 0){
		
		response.sendRedirect("adminpage.html");
	}
	
	%>

</body>
</html>