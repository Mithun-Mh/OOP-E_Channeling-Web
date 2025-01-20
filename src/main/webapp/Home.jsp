<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

<link rel="Stylesheet" href="resourse/css/Homepage.css">


<link rel="stylesheet" href="resourse/fonts/ionicons.min.css">
<link rel="stylesheet" href="resourse/css/Footer-Dark.css">
<link rel="stylesheet" href="resourse/css/Homestyles.css">


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


</head>
<body
	style="background-image: linear-gradient(180deg, #ffffff, #006080, #00131a);">


	<script src="resourse/js/jquery.min.js"></script>
	<script src="resourse/bootstrap/js/bootstrap.min.js"></script>



	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<i class="fas fa-user-md"
				style="font-size: 30px; color: red; margin-top: 10px; margin-bottom: 10px; margin-right: 10px;"></i>
			<a class="navbar-brand" href="#">DOC Channel</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link"
						href="Home.jsp">Home <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Services</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Contact</a>
					<li class="nav-item"><a class="nav-link" href="login.jsp">Sign
							In</a></li>
					<li class="nav-item"><a class="nav-link" style="color: red;"
						href="Register.jsp">Sign Up</a></li>
				</ul>
				<a href="Reservations.jsp"> <i class="fa fa-shopping-cart"
					style="font-size: 20px; color: white; margin-left: 20px;"></i></a>
			</div>
		</div>
	</nav>

	<header>



		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<!-- Slide One - Set the background image for this slide in the line below -->
				<div class="carousel-item "
					style="background-image: url(images/doctor-talking-kid.jpg)">
					<div class="carousel-caption d-none d-md-block">
						<section style="text-align: center;">
							<a href="SearchDoctor.jsp">
								<button type="button" class="btn btn-primary btn-lg">Channel
									Your Doctor</button>
							</a>

						</section>
						<h3 class="display-4">Exceptional care from friendly,
							professional staff.</h3>
						<p class="lead"></p>
					</div>
				</div>
				<!-- Slide Two - Set the background image for this slide in the line below -->
				<div class="carousel-item active"
					style="background-image: url(images/doctor-nurses-special.jpg)">
					<div class="carousel-caption d-none d-md-block">
						<section style="text-align: center;">
							<a href="SearchDoctor.jsp">
								<button type="button" class="btn btn-primary btn-lg">Channel
									Your Doctor</button>
							</a>

						</section>
						<h3 class="display-4">Our aim is delivering excellence to
							customers.</h3>
						<p class="lead"></p>
					</div>
				</div>
				<!-- Slide Three - Set the background image for this slide in the line below -->
				<div class="carousel-item"
					style="background-image: url(images/doctors-doing-surgical.jpg)">
					<div class="carousel-caption d-none d-md-block">
						<section style="text-align: center;">
							<a href="SearchDoctor.jsp">
								<button type="button" class="btn btn-primary btn-lg">Channel
									Your Doctor</button>
							</a>

						</section>
						<h3 class="display-4">Efficient service, time-saving
							convenience chosen.</h3>
						<p class="lead"></p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</header>
	<br>


	<div class="container" style="border-radius: px;"></div>
	<br>
	<br>

	<br>
	<br>



	<div class="row">

		<div class="col-sm-5 col-md-5 col-xs-5"
			style="border: 5px solid #eee; margin-left: auto; margin-right: auto;">
			<div>
				<div class="col-sm-4 col-md-4 col-xs-8" style="padding: 15px;">
					<img alt=""
						src="images/portrait-working-nurse-holding-newborn-baby.jpg"
						style="height: 350px; width: 580px;" />
				</div>
				<div class="col-sm-8 col-md-8 col-xs-16">
					<h4 style="color: white; width: 100%">A Dedicated Nurse at
						Work</h4>
					<br>
					<p style="color: white;">A compassionate nurse attending to a
						patient with utmost care and professionalism, ensuring comfort and
						well-being.</p>
				</div>

			</div>
		</div>

		<div class="col-sm-5 col-md-5 col-xs-5"
			style="border: 5px solid #eee; margin-left: auto; margin-right: auto;">
			<div>
				<div class="col-sm-4 col-md-4 col-xs-8" style="padding: 15px">
					<img alt=""
						src="images/smiling-doctor-with-strethoscope-isolated-grey.jpg"
						style="height: 350px; width: 570px" />
				</div>
				<div class="col-sm-8 col-md-8 col-xs-16">
					<h4 style="color: white; width: 100%">The Expertise of a
						Skilled Doctor</h4>
					<br>
					<p style="color: white;">A highly skilled doctor providing
						exceptional medical care and expertise, dedicated to improving
						patients' health and well-being.</p>
				</div>

			</div>
		</div>

	</div>

	<br>
	<!-- Footer -->
	<footer class="footer-dark">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-3 item">
					<h3>Services</h3>
					<ul>
						<li><a href="#">Reservations</a></li>

					</ul>
				</div>
				<div class="col-sm-6 col-md-3 item">
					<h3>About</h3>
					<ul>
						<li><a href="#">Company</a></li>
						<li><a href="#">Team</a></li>
						<li><a href="#">Careers</a></li>
					</ul>
				</div>
				<div class="col-md-6 item text">
					<h3>Doctor E-Channeling Service</h3>
					<p>Our Doctor E-Channeling Service provides convenient and
						efficient access to healthcare professionals online. Through our
						platform, patients can easily schedule appointments, consult with
						doctors remotely, and receive expert medical advice from the
						comfort of their homes. With our user-friendly interface and
						secure communication channels, patients can connect with a wide
						range of specialists and primary care physicians, ensuring timely
						and personalized healthcare solutions. Join us in embracing the
						future of healthcare delivery with our Doctor E-Channeling
						Service.</p>
				</div>

				<div class="col item social">
					<a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i
						class="icon ion-social-twitter"></i></a>
				</div>
			</div>

		</div>
	</footer>

	<script src="resourse/js/jquery.min.js"></script>
	<script src="resourse/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>