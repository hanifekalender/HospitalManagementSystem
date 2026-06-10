package com.hms.dao;

import com.hms.model.MedicalRecord;
import com.hms.util.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MedicalRecordDAO {

    public boolean addMedicalRecord(MedicalRecord record) {

        String sql = "INSERT INTO medical_records(appointment_id, diagnosis, treatment, record_date) VALUES (?, ?, ?, ?)";

        try {
            Connection connection = DatabaseConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setInt(1, record.getAppointmentId());
            statement.setString(2, record.getDiagnosis());
            statement.setString(3, record.getTreatment());
            statement.setDate(4, record.getRecordDate());

            return statement.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<MedicalRecord> getAllMedicalRecords() {

        List<MedicalRecord> records = new ArrayList<>();

        String sql = "SELECT * FROM medical_records";

        try {
            Connection connection = DatabaseConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                MedicalRecord record = new MedicalRecord(
                        resultSet.getInt("record_id"),
                        resultSet.getInt("appointment_id"),
                        resultSet.getString("diagnosis"),
                        resultSet.getString("treatment"),
                        resultSet.getDate("record_date")
                );

                records.add(record);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return records;
    }
}