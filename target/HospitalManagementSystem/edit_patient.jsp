<%@ page import="com.hms.dao.PatientDAO" %>
<%@ page import="com.hms.model.Patient" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    int patientId = Integer.parseInt(request.getParameter("id"));

    PatientDAO patientDAO = new PatientDAO();
    List<Patient> patients = patientDAO.getAllPatients();

    Patient selectedPatient = null;

    for (Patient patient : patients) {
        if (patient.getPatientId() == patientId) {
            selectedPatient = patient;
            break;
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Patient - HMS</title>
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
            <h1>Edit Patient</h1>
            <p>Update patient information</p>
        </div>

        <div class="form-card">

            <form action="editPatient" method="post">

                <input type="hidden"
                       name="patientId"
                       value="<%= selectedPatient.getPatientId() %>">

                <label>First Name</label>
                <input type="text"
                       name="firstName"
                       value="<%= selectedPatient.getFirstName() %>"
                       required>

                <label>Last Name</label>
                <input type="text"
                       name="lastName"
                       value="<%= selectedPatient.getLastName() %>"
                       required>

                <label>National ID</label>
                <input type="text"
                       name="nationalId"
                       value="<%= selectedPatient.getNationalId() %>"
                       required>

                <label>Phone</label>
                <input type="text"
                       name="phone"
                       value="<%= selectedPatient.getPhone() %>"
                       required>

                <label>Birth Date</label>
                <input type="date"
                       name="birthDate"
                       value="<%= selectedPatient.getBirthDate() %>"
                       required>

                <label>Gender</label>
                <select name="gender" required>
                    <option value="Female" <%= "Female".equals(selectedPatient.getGender()) ? "selected" : "" %>>
                        Female
                    </option>

                    <option value="Male" <%= "Male".equals(selectedPatient.getGender()) ? "selected" : "" %>>
                        Male
                    </option>

                    <option value="Other" <%= "Other".equals(selectedPatient.getGender()) ? "selected" : "" %>>
                        Other
                    </option>
                </select>

                <label>Address</label>
                <textarea name="address" required><%= selectedPatient.getAddress() %></textarea>

                <button type="submit">
                    Update Patient
                </button>

            </form>

        </div>

    </div>

</div>

</body>
</html>