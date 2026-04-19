
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    font-family: Arial;
    background: #f2f2f2;
}

.container {
    width: 300px;
    margin: 100px auto;
    padding: 20px;
    background: white;
    border-radius: 10px;
    box-shadow: 0px 0px 10px gray;
    text-align: center;
}

input {
    width: 90%;
    padding: 8px;
    margin: 8px 0;
}

button {
    padding: 10px;
    width: 100%;
    background: blue;
    color: white;
    border: none;
    border-radius: 5px;
}
</style>

</head>
<body style="background-image: url('images/bg.jpg'); 
             background-size: cover; 
             background-repeat: no-repeat;"
      class="d-flex justify-content-center align-items-center" 
      height="100vh">

<div class="card shadow p-4" style="width:350px; border-radius:15px;">
<img src="images/stmt.png" width="80" class="mb-3">
    <h3 class="text-center mb-4">Login</h3>

    <form action="login" method="post">
        
        <input type="email" name="email" class="form-control mb-3" placeholder="Enter Email" required>

        <input type="password" name="password" class="form-control mb-3" placeholder="Enter Password" required>

        <button type="submit" class="btn btn-primary w-100">Login</button>

    </form>

</div>

</body>
</html>