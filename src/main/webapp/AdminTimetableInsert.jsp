<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert Doctor Details</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
    <div class="container mt-5">
        <h2 class="mb-4">Insert Doctor Details</h2>
        <form action="InsertDoctorServlet" method="post" onsubmit="return validateForm()">
            <div class="form-group">
                <label for="doctorId">Doctor ID</label>
                <input type="text" class="form-control" id="doctorId" name="doctorId" required>
            </div>
            <div class="form-group">
                <label for="doctorName">Doctor Name</label>
                <input type="text" class="form-control" id="doctorName" name="doctorName" required>
            </div>
            <div class="form-group">
                <label for="specialization">Specialization</label>
                <input type="text" class="form-control" id="specialization" name="specialization" required>
            </div>
            <div class="form-group">
                <label for="hospital">Hospital</label>
                <input type="text" class="form-control" id="hospital" name="hospital" required>
            </div>
            <div class="form-group">
                <label for="day">Day</label>
                <select class="form-control" id="day" name="day" required>
                    <option value="">Select Day</option>
                    <option value="Monday">Monday</option>
                    <option value="Tuesday">Tuesday</option>
                    <option value="Wednesday">Wednesday</option>
                    <option value="Thursday">Thursday</option>
                    <option value="Friday">Friday</option>
                    <option value="Saturday">Saturday</option>
                    <option value="Sunday">Sunday</option>
                </select>
            </div>
            <div class="form-group">
                <label for="time">Time</label>
                <input type="time" class="form-control" id="time" name="time" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
