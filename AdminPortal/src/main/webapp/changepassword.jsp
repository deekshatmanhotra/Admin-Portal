<%@page import="java.sql.*"%>
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

String email= request.getParameter("email");
String password= request.getParameter("password");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/DataEx","root","root69");
String s="update registraton set password=? where email= ?";
PreparedStatement p=cn.prepareStatement(s);
p.setString(2,email);
p.setString(1,password);


int i=p.executeUpdate();
if(i>0){
	response.sendRedirect("adminlogin.html");
}

%>
</body>
</html>