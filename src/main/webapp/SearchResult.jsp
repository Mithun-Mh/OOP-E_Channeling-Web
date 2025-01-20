<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Result</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/searchResult.css">
<style>
body {
	background-image: url(images/frame-medical-equipment-desk.jpg);
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
}

.card {
	width: 100%;
	margin: 40px auto;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.card-header {
	background-color: #007bff;
	color: #fff;
	font-weight: bold;
	text-align: center;
}

.card-body table {
	width: 100%;
	border-collapse: collapse;
}

.card-body table th, .card-body table td {
	border: 1px solid #dee2e6;
	padding: 10px;
	text-align: center;
}

.card-body table th {
	background-color: #007bff;
	color: #fff;
}

.btn-primary {
	margin-top: 20px;
}


</style>
</head>
<body>

	<div class="container">
		<div class="row">
			<c:forEach var="trj" items="${jouDetails}">
				<div class="col-lg-4 col-md-6 mb-4 ">
					<div class="card">
						<div class="card-header bg-primary text-white">Doctor
							Details</div>
						<div class="card-body">
							<div class="row">
								<div class="col-sm-10">
									<p>
										<strong>Dr. ID:</strong> ${trj.doctorId}
									</p>
									<p>
										<strong>Dr. Name:</strong> ${trj.doctorName}
									</p>
									<p>
										<strong>Specialization:</strong> ${trj.specialization}
									</p>
								</div>
								<div class="col-sm-10">
									<p>
										<strong>Hospital:</strong> ${trj.hospital}
									</p>
									<p>
										<strong>Day:</strong> ${trj.day}
									</p>
									<p>
										<strong>Time:</strong> ${trj.time}
									</p>
								</div>
							</div>
							<h5 class="card-title mt-3">Service Charge : 275.00LKR</h5>
							
							<c:url value="ReservationMake.jsp" var="RES">
								<c:param name="doctorName" value="${trj.doctorName}" />
								<c:param name="specialization" value="${trj.specialization}" />
								<c:param name="hospital" value="${trj.hospital}" />
								<c:param name="day" value="${trj.day}" />
								<c:param name="time" value="${trj.time}" />
							</c:url>
							<a href="${RES}" class="btn btn-primary mt-2">Channel</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

</body>

</html>
