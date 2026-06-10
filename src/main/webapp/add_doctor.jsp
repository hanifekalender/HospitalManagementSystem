<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Doctor - HMS</title>
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
            <h1>Add Doctor</h1>
            <p>Create a new doctor record</p>
        </div>

        <div class="form-card">
            <form action="addDoctor" method="post">

                <label>User ID</label>
                <input type="number" name="userId" required>

                <label>Department ID</label>
                <input type="number" name="departmentId" required>

                <label>First Name</label>
                <input type="text" name="firstName" required>

                <label>Last Name</label>
                <input type="text" name="lastName" required>

                <label>Phone</label>
                <input type="text" name="phone" required>

                <label>Specialization</label>
                <input type="text" name="specialization" required>

                <button type="submit">Save Doctor</button>
            </form>
        </div>

    </div>

</div>

</body>
</html>