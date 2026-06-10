<%@ page import="com.hms.dao.DoctorDAO" %>
<%@ page import="com.hms.model.Doctor" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    int doctorId = Integer.parseInt(request.getParameter("id"));

    DoctorDAO doctorDAO = new DoctorDAO();
    List<Doctor> doctors = doctorDAO.getAllDoctors();

    Doctor selectedDoctor = null;

    for (Doctor doctor : doctors) {
        if (doctor.getDoctorId() == doctorId) {
            selectedDoctor = doctor;
            break;
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Doctor - HMS</title>
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
            <h1>Edit Doctor</h1>
            <p>Update doctor information</p>
        </div>

        <div class="form-card">

            <form action="editDoctor" method="post">

                <input type="hidden"
                       name="doctorId"
                       value="<%= selectedDoctor.getDoctorId() %>">

                <label>Department ID</label>
                <input type="number"
                       name="departmentId"
                       value="<%= selectedDoctor.getDepartmentId() %>"
                       required>

                <label>First Name</label>
                <input type="text"
                       name="firstName"
                       value="<%= selectedDoctor.getFirstName() %>"
                       required>

                <label>Last Name</label>
                <input type="text"
                       name="lastName"
                       value="<%= selectedDoctor.getLastName() %>"
                       required>

                <label>Phone</label>
                <input type="text"
                       name="phone"
                       value="<%= selectedDoctor.getPhone() %>"
                       required>

                <label>Specialization</label>
                <input type="text"
                       name="specialization"
                       value="<%= selectedDoctor.getSpecialization() %>"
                       required>

                <button type="submit">
                    Update Doctor
                </button>

            </form>

        </div>

    </div>

</div>

</body>
</html>