
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
</head>
<body>

<h2>User Registration</h2>

<form action="<%=request.getContextPath()%>/register" method="post">
    <input type="text" name="name">
    <input type="email" name="email">
    <input type="password" name="password">
    
    <button type="submit">Register</button>
</form>

</body>
</html>