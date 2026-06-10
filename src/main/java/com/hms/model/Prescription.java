package com.hms.model;

import java.sql.Date;

public class Prescription {

    private int prescriptionId;
    private int recordId;

    private String medicineName;
    private String dosage;
    private String instructions;
    private Date prescriptionDate;

    public Prescription() {
    }

    public Prescription(int prescriptionId,
                        int recordId,
                        String medicineName,
                        String dosage,
                        String instructions,
                        Date prescriptionDate) {

        this.prescriptionId = prescriptionId;
        this.recordId = recordId;
        this.medicineName = medicineName;
        this.dosage = dosage;
        this.instructions = instructions;
        this.prescriptionDate = prescriptionDate;
    }

    public int getPrescriptionId() {
        return prescriptionId;
    }

    public void setPrescriptionId(int prescriptionId) {
        this.prescriptionId = prescriptionId;
    }

    public int getRecordId() {
        return recordId;
    }

    public void setRecordId(int recordId) {
        this.recordId = recordId;
    }

    public String getMedicineName() {
        return medicineName;
    }

    public void setMedicineName(String medicineName) {
        this.medicineName = medicineName;
    }

    public String getDosage() {
        return dosage;
    }

    public void setDosage(String dosage) {
        this.dosage = dosage;
    }

    public String getInstructions() {
        return instructions;
    }

    public void setInstructions(String instructions) {
        this.instructions = instructions;
    }

    public Date getPrescriptionDate() {
        return prescriptionDate;
    }

    public void setPrescriptionDate(Date prescriptionDate) {
        this.prescriptionDate = prescriptionDate;
    }
}