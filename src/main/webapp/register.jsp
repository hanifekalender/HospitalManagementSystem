<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register - HMS</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="page">
    <div class="left-panel">
        <div class="brand">
            <div class="logo">+</div>
            <h1>Patient Registration</h1>
            <p>Create your patient profile and manage your hospital appointments securely.</p>
        </div>
    </div>

    <div class="right-panel">
        <div class="login-card register-card">
            <h2>Create Account</h2>
            <p class="subtitle">Please fill in your patient information</p>

            <form action="register" method="post">

                <label>Username</label>
                <input type="text" name="username" placeholder="Choose a username" required>

                <label>Password</label>
                <input type="password" name="password" placeholder="Create a password" required>

                <label>First Name</label>
                <input type="text" name="firstName" placeholder="Enter first name" required>

                <label>Last Name</label>
                <input type="text" name="lastName" placeholder="Enter last name" required>

                <label>National ID</label>
                <input type="text" name="nationalId" maxlength="11" placeholder="Enter national ID" required>

                <label>Phone Number</label>
                <input type="text" name="phone" placeholder="Enter phone number" required>

                <label>Birth Date</label>
                <input type="date" name="birthDate" required>

                <label>Gender</label>
                <select name="gender" required>
                    <option value="">Select gender</option>
                    <option value="Female">Female</option>
                    <option value="Male">Male</option>
                    <option value="Other">Other</option>
                </select>

                <label>Address</label>
                <textarea name="address" placeholder="Enter address" required></textarea>

                <button type="submit">Register</button>
            </form>

            <p class="register-text">
                Already have an account?
                <a href="index.jsp">Login</a>
            </p>
        </div>
    </div>
</div>

</body>
</html>
