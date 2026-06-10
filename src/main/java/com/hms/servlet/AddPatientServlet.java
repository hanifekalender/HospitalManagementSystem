package com.hms.servlet;

import com.hms.dao.PatientDAO;
import com.hms.model.Patient;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Date;

@WebServlet("/addPatient")
public class AddPatientServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        try {

            String firstName =
                    request.getParameter("firstName");

            String lastName =
                    request.getParameter("lastName");

            String nationalId =
                    request.getParameter("nationalId");

            String phone =
                    request.getParameter("phone");

            Date birthDate =
                    Date.valueOf(
                            request.getParameter("birthDate")
                    );

            String gender =
                    request.getParameter("gender");

            String address =
                    request.getParameter("address");

            Patient patient = new Patient();

            patient.setUserId(1); // şimdilik sabit

            patient.setFirstName(firstName);
            patient.setLastName(lastName);
            patient.setNationalId(nationalId);
            patient.setPhone(phone);
            patient.setBirthDate(birthDate);
            patient.setGender(gender);
            patient.setAddress(address);

            PatientDAO patientDAO =
                    new PatientDAO();

            patientDAO.addPatient(patient);

            response.sendRedirect(
                    "patients.jsp"
            );

        } catch (Exception e) {

            e.printStackTrace();

            response.getWriter().println(
                    "Error while adding patient!"
            );
        }
    }
}