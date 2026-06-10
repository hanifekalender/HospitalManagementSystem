package com.hms.model;

public class Doctor {

    private int doctorId;
    private int userId;
    private int departmentId;

    private String firstName;
    private String lastName;
    private String phone;
    private String specialization;

    public Doctor() {
    }

    public Doctor(int doctorId,
                  int userId,
                  int departmentId,
                  String firstName,
                  String lastName,
                  String phone,
                  String specialization) {

        this.doctorId = doctorId;
        this.userId = userId;
        this.departmentId = departmentId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phone = phone;
        this.specialization = specialization;
    }

    public int getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(int departmentId) {
        this.departmentId = departmentId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSpecialization() {
        return specialization;
    }

    public void setSpecialization(String specialization) {
        this.specialization = specialization;
    }
}