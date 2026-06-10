package com.hms.servlet;

import com.hms.dao.DoctorDAO;
import com.hms.model.Doctor;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/editDoctor")
public class EditDoctorServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        try {

            int doctorId = Integer.parseInt(
                    request.getParameter("doctorId")
            );

            int departmentId = Integer.parseInt(
                    request.getParameter("departmentId")
            );

            String firstName =
                    request.getParameter("firstName");

            String lastName =
                    request.getParameter("lastName");

            String phone =
                    request.getParameter("phone");

            String specialization =
                    request.getParameter("specialization");

            Doctor doctor = new Doctor();

            doctor.setDoctorId(doctorId);
            doctor.setDepartmentId(departmentId);
            doctor.setFirstName(firstName);
            doctor.setLastName(lastName);
            doctor.setPhone(phone);
            doctor.setSpecialization(specialization);

            DoctorDAO doctorDAO =
                    new DoctorDAO();

            doctorDAO.updateDoctor(doctor);

            response.sendRedirect(
                    "doctors.jsp"
            );

        } catch (Exception e) {

            e.printStackTrace();

            response.getWriter().println(
                    "Error while updating doctor!"
            );
        }
    }
}