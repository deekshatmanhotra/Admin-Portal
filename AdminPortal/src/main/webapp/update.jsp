
<%@page import="java.sql.*"%>

			<%
		
				String id = request.getParameter("id");

				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/DataEx", "root", "root69");
				String s = "select * from addstudent where id = "+id;
				PreparedStatement p = cn.prepareStatement(s);
				ResultSet rs = p.executeQuery(s);
				while (rs.next()) {
			%>
			
			<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="addstudent.css">
</head>
<body>
 <div class="wrapper">
<h1>Update Student Data</h1>
<form method="post" action="updatefinal.jsp">
<input type="hidden" name="id" value="<%=rs.getString("id") %>">
<div class="input-box">
<label for="id">Student Id</label><br>
<input type="text" name="id" value="<%=rs.getString("id") %>">
</div>

<div class="input-box">
<label for="id">Name</label><br>
<input type="text" name="name" value="<%=rs.getString("name") %>">
</div>

<div class="input-box">
<label for="id">Number</label><br>
<input type="text" name="number" value="<%=rs.getString("number") %>">
</div>

<div class="input-box">
<label for="id">Email</label><br>
<input type="email" name="email" value="<%=rs.getString("email") %>">
</div>

<div class="input-box">
<label for="id">DOB</label><br>
<input type="date" name="dob" value="<%=rs.getString("dob") %>">
</div>

<div class="input-box">
<label for="id">Course</label><br>
<input type="text" name="course" value="<%=rs.getString("course") %>">
</div>

<div class="input-box button">
<input type="submit" value="submit">
</div>
</form>
</div>
<%
}

%>
</body>
</html>
			
			
			

