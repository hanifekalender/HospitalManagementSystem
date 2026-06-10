package com.hms.util;

import com.hms.dao.DepartmentDAO;
import com.hms.model.Department;

public class DepartmentTest {

    public static void main(String[] args) {

        DepartmentDAO departmentDAO = new DepartmentDAO();

        Department department = new Department(
                0,
                "Cardiology",
                "Heart and vascular diseases"
        );

        boolean result = departmentDAO.addDepartment(department);

        if (result) {
            System.out.println("Department added successfully!");
        } else {
            System.out.println("Department could not be added!");
        }
    }
}