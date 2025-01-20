<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Details</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	background-image: url(images/frame-medical-equipment-desk.jpg);
	/* Replace with your background image path */
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
	height: 100vh;
	margin: 0;
	padding: 0;
	display: flex;
	align-items: center;
	justify-content: center;
}

.container {
	background-color: rgba(255, 255, 255, 0.9);
	/* Semi-transparent white background */
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	width: 400px; /* Adjust width as needed */
}
</style>
</head>
<body>

	<%
	String doctorName = request.getParameter("doctorName");
	String specialization = request.getParameter("specialization");
	String hospital = request.getParameter("hospital");
	String day = request.getParameter("day");
	String time = request.getParameter("time");
	%>

	<div class="container mt-5">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">RESERVATION DETAILS</h4>
				<form action="confirmReservation" method="post">
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
						<label for="day">Day</label> <input type="text" id="day"
							name="day" class="form-control" value="<%=day%>" readonly>
					</div>
					<div class="form-group">
						<label for="time">Time</label> <input type="text" id="time"
							name="time" class="form-control" value="<%=time%>" readonly>
					</div>
					<div class="form-group">
						<label for="patientName">Patient Name</label> <input type="text"
							id="patientName" name="patientName" class="form-control"
							placeholder="Enter Patient's Name" required>
					</div>
					
					<div class="form-group">
						<label for="phoneNumber">Phone Number</label> <input type="text"
							id="phoneNumber" name="phoneNumber" class="form-control"
							placeholder="Enter Phone Number" pattern="[0-9]{10}"
							title="Please enter a 10-digit phone number" required>
					</div>
					<button type="submit" class="btn btn-primary btn-block">Confirm
						Reservation</button>
				</form>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
