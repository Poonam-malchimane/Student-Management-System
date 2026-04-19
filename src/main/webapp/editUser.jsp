<%@ page import="model.User" %>

<%
    User u = (User) request.getAttribute("user");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit User</title>

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

    <div class="p-5 text-white shadow"
         style="background-color: rgba(0,0,0,0.6); border-radius:20px; width:400px;">
         
        <h3 class="text-center mb-4">Edit User</h3>

        <form action="update" method="post">

            <input type="text" name="name" class="form-control mb-3"
                   value="<%= u.getName() %>" required>

            <input type="email" name="email" class="form-control mb-3"
                   value="<%= u.getEmail() %>" readonly>

            <input type="text" name="password" class="form-control mb-3"
                   value="<%= u.getPassword() %>" required>

            <button type="submit" class="btn btn-primary w-100">Update</button>

        </form>

    </div>

</div>

</body>
</html>