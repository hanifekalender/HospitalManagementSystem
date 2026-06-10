package com.hms.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {

    private static final String URL =
            "jdbc:mysql://localhost:3306/hospital_db?useSSL=false&serverTimezone=UTC";

    private static final String USERNAME =
            "root";

    private static final String PASSWORD =
            "123120501Hk.";

    public static Connection getConnection() {

        try {

            DriverManager.registerDriver(
                    new com.mysql.cj.jdbc.Driver()
            );

            return DriverManager.getConnection(
                    URL,
                    USERNAME,
                    PASSWORD
            );

        } catch (SQLException e) {

            System.out.println("Database connection failed!");
            e.printStackTrace();

            return null;
        }
    }
}