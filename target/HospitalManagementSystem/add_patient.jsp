<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Patient - HMS</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="dashboard-container">

    <div class="sidebar">
        <h2>🏥 HMS</h2>
        <ul>
            <li><a href="dashboard.jsp">Dashboard</a></li>
            <li><a href="patients.jsp">Patients</a></li>
            <li><a href="doctors.jsp">Doctors</a></li>
            <li><a href="appointments.jsp">Appointments</a></li>
            <li><a href="medical_records.jsp">Medical Records</a></li>
            <li><a href="prescriptions.jsp">Prescriptions</a></li>
        </ul>
    </div>

    <div class="main-content">

        <div class="header">
            <h1>Add Patient</h1>
            <p>Create a new patient record</p>
        </div>

        <div class="form-card">
            <form action="addPatient" method="post">

                <label>Username</label>
                <input type="text" name="username" required>

                <label>Password</label>
                <input type="password" name="password" required>

                <label>First Name</label>
                <input type="text" name="firstName" required>

                <label>Last Name</label>
                <input type="text" name="lastName" required>

                <label>National ID</label>
                <input type="text" name="nationalId" maxlength="11" required>

                <label>Phone</label>
                <input type="text" name="phone" required>

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
                <textarea name="address" required></textarea>

                <button type="submit">Save Patient</button>
            </form>
        </div>

    </div>

</div>

</body>
</html>