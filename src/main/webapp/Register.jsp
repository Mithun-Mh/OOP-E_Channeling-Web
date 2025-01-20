<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resourse/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resourse/js/Register.js">
<meta charset="ISO-8859-1">

<script>
	function validatePassword() {
		var password = document.getElementById("password").value;
		var confirmPassword = document.getElementById("confirmPassword").value;
		var confirmPasswordField = document.getElementById("confirmPassword");
		var errorElement = document.querySelector('.invalid-feedback');

		if (password !== confirmPassword) {
			alert("Passwords do not match");
			return false;
		} else {
			errorElement.innerHTML = "";
			confirmPasswordField.classList.remove('is-invalid');
			return true;
		}
	}
</script>

<script src="resourse/js/jquery.min.js"></script>
<script src="resourse/bootstrap/js/bootstrap.min.js"></script>

<title>Sign Up</title>
<style>
body {
	background-image: url(images/frame-medical-equipment-desk.jpg);
	background-size: cover; /* Cover the entire container */
	background-position: center; /* Center the background image */
	/* You can add more styles as needed */
}

.container {
	background-color: rgba(255, 255, 255, 0.8);
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	width: 50%;
	margin: auto;
	margin-top: 50px;
}

h2 {
	text-align: center;
	margin-bottom: 20px;
}

.form-group {
	margin-bottom: 20px;
}

.radio-inline {
	margin-right: 20px;
}

.btn-primary {
	border-radius: 40px;
}

/* Additional styles for invalid feedback */
.invalid-feedback {
	display: block;
	color: red;
}

input.is-invalid {
	border-color: red;
}
</style>
tyle>
</head>
<body>


	<div class="container">
		<form action="CustomerInsert" method="post" class="form-horizontal"
			role="form" onsubmit="return validatePassword()">
			<h2>Registration</h2>
			<div class="form-group">
				<label for="firstName" class="col-sm-3 control-label">Full
					Name</label>
				<div class="col-sm-9">
					<input type="text" name="name" id="firstName"
						placeholder="First Name" class="form-control" autofocus required>
				</div>
			</div>
			<!-- Other fields... -->
			<div class="form-group">
				<label for="username" class="col-sm-3 control-label">Username</label>
				<div class="col-sm-9">
					<input type="text" name="username" id="username"
						placeholder="Username" class="form-control" autofocus required
						pattern="[a-zA-Z0-9_-]+"
						title="Username can only contain letters, numbers, underscores, or hyphens">
				</div>
			</div>
			<div class="form-group">
				<label for="email" class="col-sm-3 control-label">Email </label>
				<div class="col-sm-9">
					<input type="email" id="email" placeholder="Email"
						class="form-control" name="email" required>
				</div>
			</div>
			<div class="form-group">
				<label for="address" class="col-sm-3 control-label">Address</label>
				<div class="col-sm-9">
					<textarea class="form-control" id="address" placeholder="address"
						name="address" rows="6" required>
                        </textarea>
				</div>
			</div>
			<div class="form-group">
				<label for="birthDate" class="col-sm-3 control-label">Date
					of Birth</label>
				<div class="col-sm-9">
					<input type="date" name="dateofbirth" id="birthDate"
						class="form-control" required>
				</div>
			</div>
			<div class="form-group">
				<label for="phoneNumber" class="col-sm-7 control-label">Phone
					Number </label>
				<div class="col-sm-9">
					<input type="tel" name="phone" id="phoneNumber"
						placeholder="Phone number" class="form-control" required
						pattern="[0-9]{10}" title="Please enter a 10-digit phone number">

					<div class="invalid-feedback">Please enter a valid phone
						number (10 digits).</div>

				</div>
			</div>
			<div class="form-group">
				<label for="postalcode" class="col-sm-3 control-label">Zip/PostalCode
				</label>
				<div class="col-sm-9">
					<input name="zippostalcode" id="postalcode"
						placeholder="postalcode/Zip" class="form-control"
						name="postalcode" required>
				</div>
			</div>


			<div class="form-group">
				<label class="control-label col-sm-3" for="gender">Gender</label>
				<div class="col-sm-6">
					<div class="row">
						<div class="col-sm-7">
							<label class="radio-inline" for="gender-0"> <input
								type="radio" name="gender" id="gender-0" value="Female"
								checked="checked" required>Female
							</label>
						</div>
						<div class="col-sm-7">
							<label class="radio-inline" for="gender-1"> <input
								type="radio" name="gender" id="gender-1" value="Male" required>Male
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="password" class="col-sm-3 control-label">Password</label>
					<div class="col-sm-9">
						<input name="psw" type="password" id="password"
							placeholder="Password" class="form-control" required>
					</div>
				</div>
				<div class="form-group">
					<label for="confirmPassword" class="col-sm-8 control-label">Confirm
						Password</label>
					<div class="col-sm-9">
						<input name="confirmPsw" type="password" id="confirmPassword"
							placeholder="Confirm Password" class="form-control" required>
						
					</div>
				</div>
			</div>
			<!-- /.form-group -->
			<div class="form-group">
				<div class="col-sm-9 col-sm-offset-3">
					<span class="help-block">*Required fields</span>
				</div>
			</div>
			<button type="submit" name="submit" class="btn btn-primary btn-block"
				style="border-radius: 40px">Register</button>
		</form>
		<!-- /form -->
	</div>
	<!-- ./container -->

</body>
</html>