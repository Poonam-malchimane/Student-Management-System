<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>

    <!-- Bootstrap -->
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
    <nav class="navbar navbar-dark bg-dark px-3">
    <span class="navbar-brand">Student Management System</span>

    <div>
        <a href="dashboard.jsp" class="btn btn-success btn-sm">Home</a>
        <a href="logout" class="btn btn-danger btn-sm">Logout</a>
    </div>
</nav>

<div class="bg-blur"></div>

<div class="d-flex justify-content-center align-items-center" style="height:100%;">

    <div class="text-center text-white p-5 shadow"
         style="background-color: rgba(0,0,0,0.6); border-radius:20px; width:400px;">
         

        <h2 class="mb-3">Dashboard</h2>

        <%
            String user = (String) session.getAttribute("user");

            if (user == null) {
                response.sendRedirect("login.jsp");
            }
        %>

        <h4 class="mb-4">Welcome, <%= user %></h4>

        <a href="viewUsers.jsp" class="btn btn-success w-100 mb-3">View Users</a>
        <a href="logout" class="btn btn-danger w-100">Logout</a>

    </div>

</div>

</body>
</html>