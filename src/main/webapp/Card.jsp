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

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checkout</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
	width: 60%;
	margin: 50px auto;
}

.input-fields {
	margin-bottom: 20px;
}

.column-1, .column-2 {
	margin-bottom: 15px;
}

.small-inputs div {
	width: 48%;
}

.title {
	text-align: center;
	margin-bottom: 20px;
}

.info {
	font-size: 12px;
}

.back-btn {
	margin-right: 10px;
}
</style>
</head>
<body>
	<form action="ReservationComplete.jsp">
		<div class="container">
			<div class="checkout-panel">
				<div class="panel-body">
					<h2 class="title">Checkout</h2>

					<%
					

								String ID = request.getParameter("id");
								try {
									Connection con = channel.DBConnect.DBConnect.getConnection();
									Statement stmt = con.createStatement();
									String sql = "select * from carddetails WHERE id='" + ID + "'";
									ResultSet rs = stmt.executeQuery(sql);

									while (rs.next()) {
					%>
					<div class="input-fields">
						<div class="column-1">
							<label for="cardholder">Cardholder's Name</label> <input
								type="text" id="cardholder" name="cardholder"
								value="<%=rs.getString(3)%>" class="form-control" readonly />

							<div class="small-inputs">
								<div>
									<label for="date">Valid thru</label> <input type="text"
										id="date" name="date" placeholder="MM / YY"
										value="<%=rs.getString(5)%>" class="form-control" readonly />
								</div>

								<div>
									<label for="verification">CVV / CVC *</label> <input
										type="text" id="verification" name="CV"
										value="<%=rs.getString(6)%>" class="form-control" readonly />
								</div>
							</div>

						</div>
						<div class="column-2">
							<label for="cardnumber">Card Number</label> <input type="text"
								id="cardnumber" name="cardnumber" value="<%=rs.getString(3)%>"
								class="form-control" readonly /> <span class="info">*
								CVV or CVC is the card security code, unique three digits number
								on the back of your card separate from its number.</span>
						</div>
						<div class="form-group">
							<label for="amount">Amount</label> <input type="text"
								class="form-control" id="amount" name="amount"
								placeholder="Enter amount" value="250.00 LKR" readonly>
						</div>
					</div>
					<%
					}
					connection.close();
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
				</div>

				<div class="panel-footer text-center">
					<a href ="Payment.jsp" class="btn btn-secondary back-btn">Back</a>
					<a href="PaymentSuccess.jsp" class="btn btn-primary">Pay Now</a>
				</div>
			</div>
		</div>
	</form>
</body>
</html>

