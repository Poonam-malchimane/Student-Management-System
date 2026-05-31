
package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    public static Connection getConnection() {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Use environment variables for cloud deployment; fallback to localhost for development
            String dbUrl  = System.getenv("DB_URL")  != null
                            ? System.getenv("DB_URL")
                            : "jdbc:mysql://localhost:3306/student_db?useSSL=false&serverTimezone=UTC";
            String dbUser = System.getenv("DB_USER") != null
                            ? System.getenv("DB_USER")
                            : "root";
            String dbPass = System.getenv("DB_PASS") != null
                            ? System.getenv("DB_PASS")
                            : "Prm-14092004";

            Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPass);

            System.out.println("DB Connected Successfully");

            return con;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }


    public static void main(String[] args) {
        getConnection();
    }
}

