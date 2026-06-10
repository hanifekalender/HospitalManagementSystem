package com.hms.dao;

import com.hms.model.Prescription;
import com.hms.util.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PrescriptionDAO {

    public boolean addPrescription(Prescription prescription) {

        String sql = """
                INSERT INTO prescriptions
                (record_id, medicine_name,
                 dosage, instructions,
                 prescription_date)
                VALUES (?, ?, ?, ?, ?)
                """;

        try {

            Connection connection =
                    DatabaseConnection.getConnection();

            PreparedStatement statement =
                    connection.prepareStatement(sql);

            statement.setInt(
                    1,
                    prescription.getRecordId()
            );

            statement.setString(
                    2,
                    prescription.getMedicineName()
            );

            statement.setString(
                    3,
                    prescription.getDosage()
            );

            statement.setString(
                    4,
                    prescription.getInstructions()
            );

            statement.setDate(
                    5,
                    prescription.getPrescriptionDate()
            );

            return statement.executeUpdate() > 0;

        } catch (Exception e) {

            e.printStackTrace();

            return false;
        }
    }

    public List<Prescription> getAllPrescriptions() {

        List<Prescription> prescriptions =
                new ArrayList<>();

        String sql =
                "SELECT * FROM prescriptions";

        try {

            Connection connection =
                    DatabaseConnection.getConnection();

            PreparedStatement statement =
                    connection.prepareStatement(sql);

            ResultSet resultSet =
                    statement.executeQuery();

            while (resultSet.next()) {

                Prescription prescription =
                        new Prescription(

                                resultSet.getInt(
                                        "prescription_id"),

                                resultSet.getInt(
                                        "record_id"),

                                resultSet.getString(
                                        "medicine_name"),

                                resultSet.getString(
                                        "dosage"),

                                resultSet.getString(
                                        "instructions"),

                                resultSet.getDate(
                                        "prescription_date")
                        );

                prescriptions.add(
                        prescription
                );
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return prescriptions;
    }
}