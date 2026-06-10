package com.hms.servlet;

import com.hms.dao.PatientDAO;
import com.hms.dao.UserDAO;
import com.hms.model.Patient;
import com.hms.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Date;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String nationalId = request.getParameter("nationalId");
        String phone = request.getParameter("phone");
        String birthDateText = request.getParameter("birthDate");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");

        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setRole("PATIENT");

        UserDAO userDAO = new UserDAO();
        int userId = userDAO.addUserAndReturnId(user);

        if (userId != -1) {

            Patient patient = new Patient();
            patient.setUserId(userId);
            patient.setFirstName(firstName);
            patient.setLastName(lastName);
            patient.setNationalId(nationalId);
            patient.setPhone(phone);
            patient.setBirthDate(Date.valueOf(birthDateText));
            patient.setGender(gender);
            patient.setAddress(address);

            PatientDAO patientDAO = new PatientDAO();
            boolean patientAdded = patientDAO.addPatient(patient);

            if (patientAdded) {
                response.sendRedirect("index.jsp?success=registered");
            } else {
                response.sendRedirect("register.jsp?error=patient");
            }

        } else {
            response.sendRedirect("register.jsp?error=user");
        }
    }
}