package com.hms.servlet;

import com.hms.dao.PatientDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/deletePatient")
public class DeletePatientServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        try {

            int patientId = Integer.parseInt(
                    request.getParameter("id")
            );

            PatientDAO patientDAO =
                    new PatientDAO();

            patientDAO.deletePatient(
                    patientId
            );

            response.sendRedirect(
                    "patients.jsp"
            );

        } catch (Exception e) {

            e.printStackTrace();

            response.getWriter().println(
                    "Error while deleting patient!"
            );
        }
    }
}