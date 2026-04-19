<%@ page import="java.util.*, model.User, dao.UserDAO" %>

<!DOCTYPE html>
<html>
<head>
    <title>View Users</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body, html {
            height: 100%;
            margin: 0;
        }

        /* Background blur */
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

<!--  Background -->
<div class="bg-blur"></div>

<!--  Navbar -->
<nav class="navbar navbar-dark bg-dark px-3">
    <span class="navbar-brand">Student Management System</span>

    <div>
        <a href="dashboard.jsp" class="btn btn-success btn-sm">Home</a>
        <a href="logout" class="btn btn-danger btn-sm">Logout</a>
    </div>
</nav>

<div class="container mt-5">

    <!--  Search Box -->
    <form method="get" action="viewUsers.jsp" class="mb-4 text-center">
        <input type="text" name="search" placeholder="Search by email"
               class="form-control w-50 d-inline" value="<%= request.getParameter("search") != null ? request.getParameter("search") : "" %>">
        <button class="btn btn-primary">Search</button>
    </form>

    <!--  Table Card -->
    <div class="p-4 shadow text-white"
         style="background-color: rgba(0,0,0,0.6); border-radius:15px;">

        <h3 class="text-center mb-4">All Users</h3>

        <table class="table table-bordered table-striped text-center table-light">

            <tr class="table-dark">
                <th>Name</th>
                <th>Email</th>
                <th>Action</th>
            </tr>

            <%
                String search = request.getParameter("search");

                List<User> list;

                if (search != null && !search.isEmpty()) {
                    list = UserDAO.searchUser(search);
                } else {
                    list = UserDAO.getAllUsers();
                }

                for (User u : list) {
            %>

            <tr>
                <td><%= u.getName() %></td>
                <td><%= u.getEmail() %></td>
                <td>
                    <a href="edit?email=<%= u.getEmail() %>" class="btn btn-warning btn-sm">Edit</a>
                    <a href="delete?email=<%= u.getEmail() %>" class="btn btn-danger btn-sm">Delete</a>
                </td>
            </tr>

            <%
                }
            %>

        </table>

    </div>

</div>

</body>
</html>
