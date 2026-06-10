<%@ page import="com.hms.dao.MedicalRecordDAO" %>
<%@ page import="com.hms.model.MedicalRecord" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    MedicalRecordDAO medicalRecordDAO = new MedicalRecordDAO();
    List<MedicalRecord> records = medicalRecordDAO.getAllMedicalRecords();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Medical Records - HMS</title>
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
            <li>Prescriptions</li>
        </ul>
    </div>

    <div class="main-content">

        <div class="header">
            <h1>Medical Records</h1>
            <p>Examination and treatment records</p>
        </div>

        <button class="add-btn">+ Add Medical Record</button>

        <table class="patient-table">
            <thead>
            <tr>
                <th>ID</th>
                <th>Appointment ID</th>
                <th>Diagnosis</th>
                <th>Treatment</th>
                <th>Record Date</th>
                <th>Actions</th>
            </tr>
            </thead>

            <tbody>
            <%
                for (MedicalRecord record : records) {
            %>
            <tr>
                <td><%= record.getRecordId() %></td>
                <td><%= record.getAppointmentId() %></td>
                <td><%= record.getDiagnosis() %></td>
                <td><%= record.getTreatment() %></td>
                <td><%= record.getRecordDate() %></td>
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