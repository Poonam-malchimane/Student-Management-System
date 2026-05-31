package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Student;

public class StudentDAO {

    // ✅ Add Student
    public static int addStudent(Student s) {

        int status = 0;

        try {

            Connection con = DBConnection.getConnection();

            String query = "INSERT INTO students(name, course, email, phone) VALUES(?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, s.getName());
            ps.setString(2, s.getCourse());
            ps.setString(3, s.getEmail());
            ps.setString(4, s.getPhone());

            status = ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    // ✅ View Students
    public static List<Student> getAllStudents() {

        List<Student> list = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            String query = "SELECT * FROM students";

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Student s = new Student();

                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                s.setCourse(rs.getString("course"));
                s.setEmail(rs.getString("email"));
                s.setPhone(rs.getString("phone"));

                list.add(s);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}
