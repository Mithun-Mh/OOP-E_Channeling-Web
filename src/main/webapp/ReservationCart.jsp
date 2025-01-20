<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<style>
body {
    background-image: url(images/frame-medical-equipment-desk.jpg); /* Replace with your background image path */
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


</style>
</head>


	<script src="js/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>


	<c:forEach var="RES" items="${ResDetails}">

		<c:set var="reservationID" value="${RES.reservationID}" />
		<c:set var="doctorName" value="${RES.doctorName}" />
		<c:set var="specialization" value="${RES.specialization}" />
		<c:set var="hospital" value="${RES.hospital}" />
		<c:set var="day" value="${RES.day}" />
		<c:set var="time" value="${RES.time}" />
		<c:set var="patientName" value="${RES.patientName}" />
		<c:set var="phoneNumber" value="${RES.phoneNumber}" />
		

		<div class="card"
			style="width: 400px; margin-left: auto; margin-right: auto; margin-top: 80px; margin-bottom: auto; background-color: #E9E9E9;">
			<h5 class="card-header">RESERVATION DETAILS</h5>
			<div class="card-body">
				Reservation ID : ${RES.reservationID}<br>
				<br> Dr. Name : ${RES.doctorName}<br>
				<br> Specialization : ${RES.specialization}<br>
				<br> Hospital : ${RES.hospital}<br>
				<br> Day : ${RES.day}<br>
				<br> Time : ${RES.time}<br>
				<br> PatientName : ${RES.patientName}<br>
				<br> PhoneNumber : ${RES.phoneNumber}<br>
				<br>


				<c:url value="UpdateReservation.jsp" var="ResUpdate">
					<c:param name="reservationID" value="${reservationID}" />
					<c:param name="doctorName" value="${doctorName}" />
					<c:param name="specialization" value="${specialization}" />
					<c:param name="hospital" value="${hospital}" />
					<c:param name="day" value="${day}" />
					<c:param name="time" value="${time}" />
					<c:param name="patientName" value="${patientName}" />
					<c:param name="phoneNumber" value="${phoneNumber}" />
					
				</c:url>

				<a href="${ResUpdate}"> <input type="button"
					class="btn btn-primary" name="UpdateReservation"
					value="Update Reservation">
				</a>


				<c:url value="DeleteReservation.jsp" var="ResDelete">
					<c:param name="reservationID" value="${reservationID}" />
					<c:param name="doctorName" value="${doctorName}" />
					<c:param name="specialization" value="${specialization}" />
					<c:param name="hospital" value="${hospital}" />
					<c:param name="day" value="${day}" />
					<c:param name="time" value="${time}" />
					<c:param name="patientName" value="${patientName}" />
					<c:param name="phoneNumber" value="${phoneNumber}" />
				</c:url>

				<a href="${ResDelete}"> <input type="button"
					class="btn btn-danger" name="DeleteReservation" data-toggle="modal" data-target="#form"
					value="Delete Reservation">
				</a> <br> <br> <a href="Payment.jsp"> <input type="button"
					class="btn btn-primary" name="MakePayment" value="Pay Now">
				</a>
			</div>
		</div>



	</c:forEach>

</body>
</html>