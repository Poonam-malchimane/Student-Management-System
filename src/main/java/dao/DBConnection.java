
package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    public static Connection getConnection() {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
               "jdbc:mysql://localhost:3306/student_db?useSSL=false&serverTimezone=UTC",
                "root",
                "Prm-14092004"
            );

            System.out.println("DB Connected Successfully");

            return con;  // ✅ VERY IMPORTANT

        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;  // ❗ only if error happens
    }


   public static void main(String[] args) {
	getConnection();
  }
}
