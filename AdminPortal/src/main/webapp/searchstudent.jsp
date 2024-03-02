
<%@page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Data</title>
</head>

<style>
table {
	width: 50%;
	border-collapse: collapse;
}

@import url(https://fonts.googleapis.com/css?family=Open+Sans:400,600);

*, *:before, *:after {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

.center {
  margin-left: auto;
  margin-right: auto;
}

body {
	background-image: url("img/bg2.jpg");
	background-color: #cccccc;
	background-repeat: repeat;
	font-family: 'Open Sans', sans-serif;
}

table {
	background: #012B39;
	border-radius: 0.25em;
	border-collapse: collapse;
	margin: 1em;
}

th {
	border-bottom: 1px solid #364043;
	color: #E2B842;
	font-size: 0.85em;
	font-weight: 600;
	padding: 0.5em 1em;
	text-align: left;
}

td {
	color: #fff;
	font-weight: 400;
	padding: 0.65em 1em;
}

.disabled td {
	color: #4F5F64;
}

tbody tr {
	transition: background 0.25s ease;
}

tbody tr:hover {
	background: #014055;
}

h1{
	 margin: auto; 
	 text-align: center; 	
}
</style>


<H1>Student Record</H1>

<body bgcolor="skyblue">

	<form method="post">

		<table border="2" class = "center">
			<tr>
				<td>ID</td>
				<td>NAME</td>
				<td>NUMBER</td>
				<td>EMAIL</td>
				<td>DOB</td>
				<td>COURSE</td>
			</tr>
			<%
		
				String id = request.getParameter("id");

				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/DataEx", "root", "root69");
				String s = "select * from addstudent where id = "+id;
				PreparedStatement p = cn.prepareStatement(s);
				ResultSet rs = p.executeQuery(s);
				while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString("id")%></td>
				<td><%=rs.getString("name")%></td>
				<td><%=rs.getString("number")%></td>
				<td><%=rs.getString("email")%></td>
				<td><%=rs.getString("dob")%></td>
				<td><%=rs.getString("course")%></td>

			</tr>
			<%
			}
			%>
		</table>
		<%
		rs.close();
		cn.close();
 
		%>

	</form>

</body>

</html>