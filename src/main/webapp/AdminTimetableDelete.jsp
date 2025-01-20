<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet" import="pageNumber.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>

<%
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


<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Delete Doctor Details</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	background-image: url(images/frame-medical-equipment-desk.jpg);
	background-size: cover;
	background-position: center;
	height: 100vh;
	margin: 0;
	padding: 0;
	display: flex;
	align-items: center;
	justify-content: center;
	opacity: 0.9; /* Reduce opacity */
}

.container {
	background-color: rgba(255, 255, 255, 0.8);
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
</style>

</head>

<body>
	<%
	

		String ID = request.getParameter("id");

		try {

			Connection con = channel.DBConnect.DBConnect.getConnection();
			Statement stmt = con.createStatement();
			String sql = "select * from doctordetails WHERE Id='" + ID + "'";
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
	%>




	<div class="container mt-5">
	
		<h2 class="mb-4">Delete Doctor Details</h2>
		<form action="DeleteDoctorServlet" method="post"
			onsubmit="return validateForm()">
			<div class="form-group">
				<label for="Id">ID</label> <input type="text" class="form-control"
					id="Id" name="Id" value="<%=rs.getString(1)%>" readonly>
			</div>
			<div class="form-group">
				<label for="doctorId">Doctor ID</label> <input type="text"
					class="form-control" id="doctorId" name="doctorId"
					value="<%=rs.getString(2)%>" readonly>
			</div>
			<div class="form-group">
				<label for="doctorName">Doctor Name</label> <input type="text"
					class="form-control" id="doctorName" name="doctorName"
					value="<%=rs.getString(3)%>" readonly>
			</div>
			<div class="form-group">
				<label for="specialization">Specialization</label> <input
					type="text" class="form-control" id="specialization"
					name="specialization" value="<%=rs.getString(4)%>" readonly>
			</div>
			<div class="form-group">
				<label for="hospital">Hospital</label> <input type="text"
					class="form-control" id="hospital" name="hospital"
					value="<%=rs.getString(5)%>" readonly>
			</div>

			<div class="form-group">
				<label for="day">Day</label> <select class="form-control" id="day"
					name="day" readonly>
					<option value="">Select Day</option>
					<option value="Monday"
						<%=rs.getString(6).equals("Monday") ? "selected" : ""%>>Monday</option>
					<option value="Tuesday"
						<%=rs.getString(6).equals("Tuesday") ? "selected" : ""%>>Tuesday</option>
					<option value="Wednesday"
						<%=rs.getString(6).equals("Wednesday") ? "selected" : ""%>>Wednesday</option>
					<option value="Thursday"
						<%=rs.getString(6).equals("Thursday") ? "selected" : ""%>>Thursday</option>
					<option value="Friday"
						<%=rs.getString(6).equals("Friday") ? "selected" : ""%>>Friday</option>
					<option value="Saturday"
						<%=rs.getString(6).equals("Saturday") ? "selected" : ""%>>Saturday</option>
					<option value="Sunday"
						<%=rs.getString(6).equals("Sunday") ? "selected" : ""%>>Sunday</option>
				</select>
			</div>
			<div class="form-group">
				<label for="time">Time</label> <input type="time"
					class="form-control" id="time" name="time"
					value="<%=rs.getString(7)%>" readonly>
			</div>

			<button type="submit" class="btn btn-primary">Delete</button>
		</form>
	</div>

	<%
	}
	connection.close();
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
	<script>
        function validateForm() {
            var doctorId = document.getElementById("doctorId").value.trim();
            var doctorName = document.getElementById("doctorName").value.trim();
            var specialization = document.getElementById("specialization").value.trim();
            var hospital = document.getElementById("hospital").value.trim();
            var day = document.getElementById("day").value;
            var time = document.getElementById("time").value.trim();
            
            if (doctorId === "" || doctorName === "" || specialization === "" || hospital === "" || day === "" || time === "") {
                alert("All fields are required.");
                return false;
            }
            
            return true;
        }
    </script>
</body>
</html>