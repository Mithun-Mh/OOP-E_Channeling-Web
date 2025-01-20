<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet" import="pageNumber.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>

<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/online_e_channeling_system";

String user = "root";
String password = "123456789";
try {
	Class.forName(driver);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>


<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link
	href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css'>
<script
	src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js'></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

<link rel="Stylesheet" href="resourse/css/Homepage.css">


<link rel="stylesheet" href="resourse/fonts/ionicons.min.css">
<link rel="stylesheet" href="resourse/css/Footer-Dark.css">
<link rel="stylesheet" href="resourse/css/Homestyles.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1"
	crossorigin="anonymous">

<style>
body.home {
	background-image: url(images/frame-medical-equipment-desk.jpg);
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
}

h1 {
	font-weight: bold;
	text-align: center;
}
/* Set table background color */
tbody {
	background-color: white;
}
</style>

</head>

<body class="home">


	<script src="resourse/js/jquery.min.js"></script>
	<script src="resourse/bootstrap/js/bootstrap.min.js"></script>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<h1>Choose Card</h1>
	<div class="container mt-5">

		<table class="table table-bordered table-striped table-hover">
			<thead class="thead-dark">
				<tr>

					<th scope="col">Card Name</th>
					<th scope="col">Card Holder Name</th>
					<th scope="col">Card Number</th>
					<th scope="col">VALID THRU</th>
					<th scope="col">CVV</th>
					<th scope="col">Select</th>

				</tr>
			</thead>
			<tbody>
				<%
				try {
					connection = DriverManager.getConnection(connectionUrl, user, password);
					statement = connection.createStatement();
					String sql = "SELECT * FROM carddetails";
					resultSet = statement.executeQuery(sql);
					while (resultSet.next()) {
				%>
				<tr>

					<td><%=resultSet.getString("cardName")%></td>
					<td><%=resultSet.getString("cardHolderName")%></td>
					<td><%=resultSet.getString("cardNumber")%></td>
					<td><%=resultSet.getString("validThru")%></td>
					<td><%=resultSet.getString("cVV")%></td>
					<td><a href="Card.jsp?id=<%=resultSet.getString("id")%>"
						class="btn btn-primary">Select</a></td>

				</tr>
				<%
				}
				connection.close();
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>