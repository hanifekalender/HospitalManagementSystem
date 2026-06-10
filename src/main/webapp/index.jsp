<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>HMS Login</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="page">
    <div class="left-panel">
        <div class="brand">
            <div class="logo">+</div>
            <h1>Hospital Information<br>Management System</h1>
            <p>Manage patients, doctors, appointments and medical records from one secure panel.</p>
        </div>
    </div>

    <div class="right-panel">
        <div class="login-card">
            <h2>Welcome Back</h2>
            <p class="subtitle">Please login to continue</p>

            <form action="login" method="post">
                <label>Username</label>
                <input type="text" name="username" placeholder="Enter your username" required>

                <label>Password</label>
                <input type="password" name="password" placeholder="Enter your password" required>

                <button type="submit">Login</button>
            </form>

            <p class="register-text">
                New patient?
                <a href="register.jsp">Create an account</a>
            </p>
        </div>
    </div>
</div>

</body>
</html>