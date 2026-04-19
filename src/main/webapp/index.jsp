<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>

  
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body, html {
            height: 100%;
            margin: 0;
        }

      
        .bg-blur {
            background-image: url('images/stmt.png');
            background-size: cover;
            background-position: center;
            height: 100%;
            width: 100%;
            position: absolute;
            filter: blur(6px);
            z-index: -1;
        }

       
        .content {
            height: 100%;
        }
    </style>
</head>

<body>


<div class="bg-blur"></div>


<div class="d-flex justify-content-center align-items-center content">

    <div class="text-center text-white p-5"
         style="background-color: rgba(0,0,0,0.5); border-radius:15px;">

        <h1 class="mb-4">Welcome to Student Management System</h1>

        <a href="login.jsp" class="btn btn-primary m-2 px-4">Login</a>
        <a href="register.jsp" class="btn btn-success m-2 px-4">Register</a>

    </div>

</div>

</body>
</html>