<%@ page import="com.hms.dao.PrescriptionDAO" %>
<%@ page import="com.hms.model.Prescription" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    PrescriptionDAO prescriptionDAO = new PrescriptionDAO();
    List<Prescription> prescriptions = prescriptionDAO.getAllPrescriptions();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Prescriptions - HMS</title>
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
            <h1>Prescriptions</h1>
            <p>Prescription Management</p>
        </div>

        <button class="add-btn">+ Add Prescription</button>

        <table class="patient-table">
            <thead>
            <tr>
                <th>ID</th>
                <th>Record ID</th>
                <th>Medicine</th>
                <th>Dosage</th>
                <th>Instructions</th>
                <th>Date</th>
                <th>Actions</th>
            </tr>
            </thead>

            <tbody>
            <%
                for (Prescription prescription : prescriptions) {
            %>
            <tr>
                <td><%= prescription.getPrescriptionId() %></td>
                <td><%= prescription.getRecordId() %></td>
                <td><%= prescription.getMedicineName() %></td>
                <td><%= prescription.getDosage() %></td>
                <td><%= prescription.getInstructions() %></td>
                <td><%= prescription.getPrescriptionDate() %></td>
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