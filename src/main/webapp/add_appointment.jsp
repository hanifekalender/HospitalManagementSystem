<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Appointment - HMS</title>
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
            <h1>Add Appointment</h1>
            <p>Create a new appointment</p>
        </div>

        <div class="form-card">
            <form action="addAppointment" method="post">

                <label>Patient ID</label>
                <input type="number" name="patientId" required>

                <label>Doctor ID</label>
                <input type="number" name="doctorId" required>

                <label>Appointment Date</label>
                <input type="date" name="appointmentDate" required>

                <label>Appointment Time</label>
                <input type="time" name="appointmentTime" required>

                <label>Status</label>
                <select name="status" required>
                    <option value="Scheduled">Scheduled</option>
                    <option value="Completed">Completed</option>
                    <option value="Cancelled">Cancelled</option>
                </select>

                <label>Notes</label>
                <textarea name="notes" placeholder="Enter appointment notes"></textarea>

                <button type="submit">Save Appointment</button>

            </form>
        </div>

    </div>

</div>

</body>
</html>