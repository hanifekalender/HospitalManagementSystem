package com.hms.dao;

import com.hms.model.Doctor;
import com.hms.util.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DoctorDAO {

    public boolean addDoctor(Doctor doctor) {

        String sql = """
                INSERT INTO doctors
                (user_id, department_id,
                 first_name, last_name,
                 phone, specialization)
                VALUES (?, ?, ?, ?, ?, ?)
                """;

        try {

            Connection connection =
                    DatabaseConnection.getConnection();

            PreparedStatement statement =
                    connection.prepareStatement(sql);

            statement.setInt(
                    1,
                    doctor.getUserId()
            );

            statement.setInt(
                    2,
                    doctor.getDepartmentId()
            );

            statement.setString(
                    3,
                    doctor.getFirstName()
            );

            statement.setString(
                    4,
                    doctor.getLastName()
            );

            statement.setString(
                    5,
                    doctor.getPhone()
            );

            statement.setString(
                    6,
                    doctor.getSpecialization()
            );

            return statement.executeUpdate() > 0;

        } catch (Exception e) {

            e.printStackTrace();
            return false;
        }
    }

    public List<Doctor> getAllDoctors() {

        List<Doctor> doctors =
                new ArrayList<>();

        String sql =
                "SELECT * FROM doctors";

        try {

            Connection connection =
                    DatabaseConnection.getConnection();

            PreparedStatement statement =
                    connection.prepareStatement(sql);

            ResultSet resultSet =
                    statement.executeQuery();

            while (resultSet.next()) {

                Doctor doctor =
                        new Doctor(

                                resultSet.getInt(
                                        "doctor_id"),

                                resultSet.getInt(
                                        "user_id"),

                                resultSet.getInt(
                                        "department_id"),

                                resultSet.getString(
                                        "first_name"),

                                resultSet.getString(
                                        "last_name"),

                                resultSet.getString(
                                        "phone"),

                                resultSet.getString(
                                        "specialization")
                        );

                doctors.add(
                        doctor
                );
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return doctors;
    }

    public boolean deleteDoctor(int doctorId) {

        String sql =
                "DELETE FROM doctors WHERE doctor_id = ?";

        try {

            Connection connection =
                    DatabaseConnection.getConnection();

            PreparedStatement statement =
                    connection.prepareStatement(sql);

            statement.setInt(
                    1,
                    doctorId
            );

            return statement.executeUpdate() > 0;

        } catch (Exception e) {

            e.printStackTrace();
            return false;
        }
    }

    public boolean updateDoctor(Doctor doctor) {

        String sql = """
                UPDATE doctors
                SET department_id = ?,
                    first_name = ?,
                    last_name = ?,
                    phone = ?,
                    specialization = ?
                WHERE doctor_id = ?
                """;

        try {

            Connection connection =
                    DatabaseConnection.getConnection();

            PreparedStatement statement =
                    connection.prepareStatement(sql);

            statement.setInt(
                    1,
                    doctor.getDepartmentId()
            );

            statement.setString(
                    2,
                    doctor.getFirstName()
            );

            statement.setString(
                    3,
                    doctor.getLastName()
            );

            statement.setString(
                    4,
                    doctor.getPhone()
            );

            statement.setString(
                    5,
                    doctor.getSpecialization()
            );

            statement.setInt(
                    6,
                    doctor.getDoctorId()
            );

            return statement.executeUpdate() > 0;

        } catch (Exception e) {

            e.printStackTrace();
            return false;
        }
    }
}