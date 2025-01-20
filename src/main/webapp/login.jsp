<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="resourse/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>
    body {
        background-image: url(images/frame-medical-equipment-desk.jpg);
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .loginy {
        background-color: rgba(255, 255, 255, 0.8);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 350px;
    }

    .form-signin {
        text-align: center;
    }

    .form-signin h1 {
        margin-bottom: 20px;
    }

    .form-signin .input-group {
        margin-bottom: 15px;
    }

    .form-signin .input-group input {
        border-radius: 20px;
    }

    .form-signin .input-group .btn {
        border-radius: 20px;
    }

    .form-signin hr {
        margin-top: 20px;
        margin-bottom: 20px;
    }

    .form-signin .register-link {
        display: block;
        margin-top: 20px;
    }
</style>
</head>
<body>
    <section class="loginy">
        <div id="logreg-forms">
            <form action="LoginServlet" method="post" class="form-signin">
                <h1 class="h3 mb-3 font-weight-normal">Login</h1>
            
                <div class="input-group">
                    <input type="text" id="inputEmail" class="form-control" placeholder="Username" name="uid" autofocus>
                </div>

                <div class="input-group">
                    <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="pass">
                </div>

                <div class="input-group">
                    <button class="btn btn-primary btn-block form-control submit" type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>
                </div>

                <hr>
                <p class="register-link">Don't have an account? <a href="Register.jsp">Register here</a></p>
            </form>
        </div>
    </section>
</body>
</html>
