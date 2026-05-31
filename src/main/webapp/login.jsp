<!DOCTYPE html>
<html>
<head>
    <title>Login</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>

        body, html {
            height: 100%;
            margin: 0;
        }

        .bg-blur {
            background-image: url('images/bg.jpg');
            background-size: cover;
            background-position: center;
            height: 100%;
            width: 100%;
            position: fixed;
            filter: blur(6px);
            z-index: -1;
        }

    </style>
</head>

<body>

<div class="bg-blur"></div>

<nav class="navbar navbar-dark bg-dark px-3">
    <span class="navbar-brand">Student Management System</span>

    <div>
        <a href="index.jsp" class="btn btn-primary btn-sm">Home</a>
        <a href="register.jsp" class="btn btn-warning btn-sm">Register</a>
    </div>
</nav>

<div class="d-flex justify-content-center align-items-center" style="height:90%;">

    <div class="p-5 text-white shadow"
         style="background-color: rgba(0,0,0,0.6); border-radius:20px; width:420px;">

        <h2 class="text-center mb-4">Login</h2>

        <% if(request.getParameter("success") != null){ %>

            <div class="alert alert-success">
                Registration Successful! Please Login.
            </div>

        <% } %>

        <% if(request.getParameter("error") != null){ %>

            <div class="alert alert-danger">
                Invalid Email or Password.
            </div>

        <% } %>

        <form action="login" method="post">

            <input type="email"
                   name="email"
                   placeholder="Enter Email"
                   class="form-control mb-3"
                   required>

            <input type="password"
                   name="password"
                   placeholder="Enter Password"
                   class="form-control mb-4"
                   required>

            <button class="btn btn-success w-100 mb-3">
                Login
            </button>

            <div class="text-center">
                New user?
                <a href="register.jsp" class="text-warning">Create Account</a>
            </div>

        </form>

    </div>

</div>

</body>
</html>
