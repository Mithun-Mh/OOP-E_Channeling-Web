<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Details</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	background-image: url(images/frame-medical-equipment-desk.jpg);
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
}

.container {
	background-color: rgba(255, 255, 255, 0.8);
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	width: 50%;
	margin: 50px auto;
}
</style>
</head>
<body>

	<%
	String reservationID = request.getParameter("reservationID");
	String doctorName = request.getParameter("doctorName");
	String specialization = request.getParameter("specialization");
	String hospital = request.getParameter("hospital");
	String day = request.getParameter("day");
	String time = request.getParameter("time");
	String patientName = request.getParameter("patientName");
	String phoneNumber = request.getParameter("phoneNumber");
	%>

	<div class="container">
		<h4 class="text-center mb-4">Reservation Details</h4>
		<form action="UpdateReservation" method="post">
			<div class="form-group">
				<label for="reservationID">Reservation ID</label> <input type="text"
					id="reservationID" name="reservationID" class="form-control"
					value="<%=reservationID%>" readonly>
			</div>
			<div class="form-group">
				<label for="doctorName">Doctor Name</label> <input type="text"
					id="doctorName" name="doctorName" class="form-control"
					value="<%=doctorName%>" readonly>
			</div>
			<div class="form-group">
				<label for="specialization">Specialization</label> <input
					type="text" id="specialization" name="specialization"
					class="form-control" value="<%=specialization%>" readonly>
			</div>
			<div class="form-group">
				<label for="hospital">Hospital</label> <input type="text"
					id="hospital" name="hospital" class="form-control"
					value="<%=hospital%>" readonly>
			</div>
			<div class="form-group">
				<label for="day">Day</label> <input type="text" id="day" name="day"
					class="form-control" value="<%=day%>" readonly>
			</div>
			<div class="form-group">
				<label for="time">Time</label> <input type="text" id="time"
					name="time" class="form-control" value="<%=time%>" readonly>
			</div>
			<div class="form-group">
				<label for="patientName">Patient Name</label> <input type="text"
					id="patientName" name="patientName" class="form-control"
					value="<%=patientName%>" required>
			</div>

			<div class="form-group">
				<label for="phoneNumber">Phone Number</label> <input type="text"
					id="phoneNumber" name="phoneNumber" class="form-control"
					placeholder="Enter Phone Number" pattern="[0-9]{10}"
					title="Please enter a 10-digit phone number"
					value="<%=phoneNumber%>" required>
			</div>
			<button type="submit" class="btn btn-primary btn-block">Update
				Reservation</button>
		</form>
	</div>

</body>
</html>
