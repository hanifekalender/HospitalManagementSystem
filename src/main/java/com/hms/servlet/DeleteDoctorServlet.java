package com.hms.servlet;

import com.hms.dao.DoctorDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/deleteDoctor")
public class DeleteDoctorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        try {

            int doctorId = Integer.parseInt(
                    request.getParameter("id")
            );

            DoctorDAO doctorDAO =
                    new DoctorDAO();

            doctorDAO.deleteDoctor(
                    doctorId
            );

            response.sendRedirect(
                    "doctors.jsp"
            );

        } catch (Exception e) {

            e.printStackTrace();

            response.getWriter().println(
                    "Error while deleting doctor!"
            );
        }
    }
}