<%@ page import="com.hms.dao.DoctorDAO" %>
<%@ page import="com.hms.model.Doctor" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    DoctorDAO doctorDAO = new DoctorDAO();
    List<Doctor> doctors = doctorDAO.getAllDoctors();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Doctors - HMS</title>
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
            <h1>Doctors</h1>
            <p>Doctor Management</p>
        </div>

        <a href="add_doctor.jsp">
            <button class="add-btn">+ Add Doctor</button>
        </a>

        <table class="patient-table">
            <thead>
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Specialization</th>
                <th>Phone</th>
                <th>Actions</th>
            </tr>
            </thead>

            <tbody>
            <%
                for (Doctor doctor : doctors) {
            %>
            <tr>
                <td><%= doctor.getDoctorId() %></td>
                <td><%= doctor.getFirstName() %></td>
                <td><%= doctor.getLastName() %></td>
                <td><%= doctor.getSpecialization() %></td>
                <td><%= doctor.getPhone() %></td>
                <td>
                    <a href="edit_doctor.jsp?id=<%= doctor.getDoctorId() %>">
                        <button type="button">Edit</button>
                    </a>

                    <a href="deleteDoctor?id=<%= doctor.getDoctorId() %>"
                       onclick="return confirm('Are you sure you want to delete this doctor?')">
                        <button type="button">Delete</button>
                    </a>
                </td>
            </tr>
            <%
                }
            %>
            </tbody>
        </table>

    </div>

</div>

</body>
</html>