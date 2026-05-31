<!DOCTYPE html>
<html>
<head>
    <title>Add Student</title>

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

<div class="bg-blur"></div>

<!-- Navbar -->
<nav class="navbar navbar-dark bg-dark px-3">
    <span class="navbar-brand">Student Management System</span>

    <div>
        <a href="dashboard.jsp" class="btn btn-success btn-sm">Dashboard</a>
        <a href="viewStudents.jsp" class="btn btn-primary btn-sm">View Students</a>
        <a href="logout" class="btn btn-danger btn-sm">Logout</a>
    </div>
</nav>

<!-- Form -->
<div class="d-flex justify-content-center align-items-center" style="height:90%;">

    <div class="p-5 text-white shadow"
         style="background-color: rgba(0,0,0,0.6); border-radius:20px; width:450px;">

        <h2 class="text-center mb-4">Add Student</h2>

        <form action="addStudent" method="post">

            <input type="text" name="name"
                   placeholder="Enter Name"
                   class="form-control mb-3"
                   required>

            <input type="text" name="course"
                   placeholder="Enter Course"
                   class="form-control mb-3"
                   required>

            <input type="email" name="email"
                   placeholder="Enter Email"
                   class="form-control mb-3"
                   required>

            <input type="text" name="phone"
                   placeholder="Enter Phone"
                   class="form-control mb-4"
                   required>

            <button class="btn btn-success w-100">
                Add Student
            </button>

        </form>

    </div>

</div>

</body>
</html>