<%@ page import="com.hms.dao.AppointmentDAO" %>
<%@ page import="com.hms.model.Appointment" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    AppointmentDAO appointmentDAO = new AppointmentDAO();
    List<Appointment> appointments = appointmentDAO.getAllAppointments();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Appointments - HMS</title>
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
            <li>Medical Records</li>
            <li>Prescriptions</li>
        </ul>
    </div>

    <div class="main-content">

        <div class="header">
            <h1>Appointments</h1>
            <p>Appointment Management</p>
        </div>

       <a href="add_appointment.jsp">
           <button class="add-btn">+ Add Appointment</button>
       </a>

        <table class="patient-table">
            <thead>
            <tr>
                <th>ID</th>
                <th>Patient ID</th>
                <th>Doctor ID</th>
                <th>Date</th>
                <th>Time</th>
                <th>Status</th>
                <th>Notes</th>
                <th>Actions</th>
            </tr>
            </thead>

            <tbody>
            <%
                for (Appointment appointment : appointments) {
            %>
            <tr>
                <td><%= appointment.getAppointmentId() %></td>
                <td><%= appointment.getPatientId() %></td>
                <td><%= appointment.getDoctorId() %></td>
                <td><%= appointment.getAppointmentDate() %></td>
                <td><%= appointment.getAppointmentTime() %></td>
                <td><%= appointment.getStatus() %></td>
                <td><%= appointment.getNotes() %></td>
                <td>
                    <button>Edit</button>
                    <button>Delete</button>
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