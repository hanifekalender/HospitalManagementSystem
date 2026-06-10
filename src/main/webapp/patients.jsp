<%@ page import="com.hms.dao.PatientDAO" %>
<%@ page import="com.hms.model.Patient" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    PatientDAO patientDAO = new PatientDAO();
    List<Patient> patients = patientDAO.getAllPatients();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Patients - HMS</title>
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
            <h1>Patients</h1>
            <p>Patient Management</p>
        </div>

        <a href="add_patient.jsp">
            <button class="add-btn">+ Add Patient</button>
        </a>

        <table class="patient-table">

            <thead>
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>National ID</th>
                <th>Phone</th>
                <th>Gender</th>
                <th>Actions</th>
            </tr>
            </thead>

            <tbody>

            <%
                for (Patient patient : patients) {
            %>

            <tr>
                <td><%= patient.getPatientId() %></td>
                <td><%= patient.getFirstName() %></td>
                <td><%= patient.getLastName() %></td>
                <td><%= patient.getNationalId() %></td>
                <td><%= patient.getPhone() %></td>
                <td><%= patient.getGender() %></td>

                <td>

                   <a href="edit_patient.jsp?id=<%= patient.getPatientId() %>">
                       <button type="button">Edit</button>
                   </a>

                    <a href="deletePatient?id=<%= patient.getPatientId() %>"
                       onclick="return confirm('Are you sure you want to delete this patient?')">

                        <button type="button">
                            Delete
                        </button>

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