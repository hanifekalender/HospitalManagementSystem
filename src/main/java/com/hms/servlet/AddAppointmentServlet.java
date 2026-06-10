package com.hms.servlet;

import com.hms.dao.AppointmentDAO;
import com.hms.model.Appointment;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Date;
import java.sql.Time;

@WebServlet("/addAppointment")
public class AddAppointmentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        try {
            int patientId = Integer.parseInt(request.getParameter("patientId"));
            int doctorId = Integer.parseInt(request.getParameter("doctorId"));

            Date appointmentDate = Date.valueOf(request.getParameter("appointmentDate"));
            Time appointmentTime = Time.valueOf(request.getParameter("appointmentTime") + ":00");

            String status = request.getParameter("status");
            String notes = request.getParameter("notes");

            Appointment appointment = new Appointment();

            appointment.setPatientId(patientId);
            appointment.setDoctorId(doctorId);
            appointment.setAppointmentDate(appointmentDate);
            appointment.setAppointmentTime(appointmentTime);
            appointment.setStatus(status);
            appointment.setNotes(notes);

            AppointmentDAO appointmentDAO = new AppointmentDAO();

            if (appointmentDAO.isDoctorAvailable(appointment)) {
                appointmentDAO.addAppointment(appointment);
                response.sendRedirect("appointments.jsp");
            } else {
                response.sendRedirect("add_appointment.jsp?error=doctorBusy");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error while adding appointment!");
        }
    }
}