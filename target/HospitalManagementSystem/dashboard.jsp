<%@ page import="com.hms.dao.DashboardDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    DashboardDAO dashboardDAO = new DashboardDAO();

    int patientCount = dashboardDAO.getPatientCount();
    int doctorCount = dashboardDAO.getDoctorCount();
    int appointmentCount = dashboardDAO.getAppointmentCount();
    int departmentCount = dashboardDAO.getDepartmentCount();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Dashboard - HMS</title>
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
            <h1>Hospital Dashboard</h1>
            <p>Welcome to Hospital Management System</p>
        </div>

        <div class="cards">

            <div class="card">
                <h3>Total Patients</h3>
                <p><%= patientCount %></p>
            </div>

            <div class="card">
                <h3>Total Doctors</h3>
                <p><%= doctorCount %></p>
            </div>

            <div class="card">
                <h3>Appointments</h3>
                <p><%= appointmentCount %></p>
            </div>

            <div class="card">
                <h3>Departments</h3>
                <p><%= departmentCount %></p>
            </div>

        </div>

    </div>

</div>

</body>
</html>