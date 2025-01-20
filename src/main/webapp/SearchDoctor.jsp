<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
	width:800px;
}
</style>
</head>
<body>
    
    <script src="js/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title text-center mb-4">Search Doctor for Booking</h3>
                        <form action="search" method="post">
                            <div class="form-group">
                                <label for="drname">Dr. Name</label> 
                                <input type="text" id="drname" name="DR_NAME" class="form-control" placeholder="Enter Doctor's Name">
                            </div>
                            <div class="form-group">
                                <label for="specialization">Specialization</label> 
                                <select id="specialization" name="SPECIALIZATION" class="form-control">
                                	<option value="Dermatology">Dermatology</option>
                                    <option value="Cardiology">Cardiology</option>
                                    
                                    <!-- Add more options as needed -->
                                </select> 
                            </div>
                            <div class="form-group">
                                <label for="hospital">Hospital</label> 
                                <select id="hospital" name="HOSPITAL" class="form-control">
                                	<option value="Select One">Select One</option>
                                    <option value="Navaloka Hospital">Navaloka Hospital</option>
                                    <option value="Asiri Hospital">Asiri Hospital</option>
                                    <!-- Add more options as needed -->
                                </select> 
                            </div>
                            <button type="submit" name="submit" class="btn btn-primary btn-block">Search</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
