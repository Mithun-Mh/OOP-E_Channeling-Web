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



<meta charset="ISO-8859-1">
<title></title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

<link rel="Stylesheet" href="resourse/css/Homepage.css">


<link rel="stylesheet" href="resourse/fonts/ionicons.min.css">
<link rel="stylesheet" href="resourse/css/Footer-Dark.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
		<link
		href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
		rel="stylesheet" id="bootstrap-css">
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		
 <style>
    h1 {
      font-weight: bold;
      
	text-align: center;
      
    }
    body {
	background-image: url(images/frame-medical-equipment-desk.jpg);
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
}
tbody {
    background-color: white;
}


  </style>
</head>
<body
	style=" background: linear-gradient(180deg, #ff0000);">


	<script src="resourse/js/jquery.min.js"></script>
	<script src="resourse/bootstrap/js/bootstrap.min.js"></script>
	
	

	<!-- Navigation -->
	
	
				
				<br>
				<h1>Reservation Details</h1>
	<div class="container mt-5">
  
  <table class="table table-bordered table-striped table-hover table-bg-white">
    <thead class="thead-dark">
      <tr>
        
        <th scope="col">Reservation ID</th>
        <th scope="col">DoctorName</th>
        <th scope="col">Specialization</th>
        <th scope="col">Hospital</th>
        <th scope="col">Day</th>
        <th scope="col">Time</th>
        <th scope="col">PatientName</th>
        <th scope="col">PhoneNumber</th>
        <th scope="col">Payment</th>
      </tr>
    </thead>
    <tbody>
      <%
        try {
          connection = DriverManager.getConnection(connectionUrl, user, password);
          statement = connection.createStatement();
          String sql = "SELECT * FROM reservationdetails";
          resultSet = statement.executeQuery(sql);
          while (resultSet.next()) {
      %>
      <tr>
        
        <td><%=resultSet.getString("ReservationID")%></td>
        <td><%=resultSet.getString("DoctorName")%></td>
       
        <td><%=resultSet.getString("Specialization")%></td>
        <td><%=resultSet.getString("Hospital")%></td>
        <td><%=resultSet.getString("Day")%></td>
        <td><%=resultSet.getString("Time")%></td>
        <td><%=resultSet.getString("PatientName")%></td>
        <td><%=resultSet.getString("PhoneNumber")%></td>
        
        <td>
          <a href="#" class="btn btn-success">Success</a>
        </td>
       
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