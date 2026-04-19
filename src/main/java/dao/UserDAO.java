
package dao;

import java.sql.Connection;
import java.util.*;
import java.sql.PreparedStatement;
import model.User;
import java.sql.ResultSet;

public class UserDAO {

	public static boolean registerUser(User user) {

	    boolean status = false;

	    try {
	        Connection con = DBConnection.getConnection();

	        if (con == null) {
	            System.out.println("Connection is NULL ❌");
	            return false;
	        }

	        System.out.println("DB Connected");
	        System.out.println("Step 1: Before query");

	        String query = "INSERT INTO users(name, email, password) VALUES(?,?,?)";

	        java.sql.PreparedStatement ps = con.prepareStatement(query);

	        ps.setString(1, user.getName());
	        ps.setString(2, user.getEmail());
	        ps.setString(3, user.getPassword());

	        int rows = ps.executeUpdate();

	        System.out.println("Rows inserted: " + rows);

	        if (rows > 0) {
	            status = true;
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return status;
	}
	
	public static boolean loginUser(String email, String password) {

	    boolean status = false;

	    try {
	        Connection con = DBConnection.getConnection();

	        String query = "SELECT * FROM users WHERE email=? AND password=?";

	        PreparedStatement ps = con.prepareStatement(query);
	        ps.setString(1, email);
	        ps.setString(2, password);

	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {
	            status = true;
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return status;
	}
	public static java.util.List<User> getAllUsers() {

	    java.util.List<User> list = new java.util.ArrayList<>();

	    try {
	        Connection con = DBConnection.getConnection();

	        String query = "SELECT * FROM users";

	        PreparedStatement ps = con.prepareStatement(query);
	        ResultSet rs = ps.executeQuery();

	        while (rs.next()) {
	            User u = new User();
	            u.setName(rs.getString("name"));
	            u.setEmail(rs.getString("email"));
	            u.setPassword(rs.getString("password"));

	            list.add(u);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return list;
	}
	public static boolean deleteUser(String email) {

	    boolean status = false;

	    try {
	        Connection con = DBConnection.getConnection();

	        String query = "DELETE FROM users WHERE email=?";

	        PreparedStatement ps = con.prepareStatement(query);
	        ps.setString(1, email);

	        int rows = ps.executeUpdate();

	        if (rows > 0) {
	            status = true;
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return status;
	}
	public static User getUserByEmail(String email) {

	    User user = null;

	    try {
	        Connection con = DBConnection.getConnection();

	        String query = "SELECT * FROM users WHERE email=?";

	        PreparedStatement ps = con.prepareStatement(query);
	        ps.setString(1, email);

	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {
	            user = new User();
	            user.setName(rs.getString("name"));
	            user.setEmail(rs.getString("email"));
	            user.setPassword(rs.getString("password"));
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return user;
	}
	public static boolean updateUser(User user) {

	    boolean status = false;

	    try {
	        Connection con = DBConnection.getConnection();

	        String query = "UPDATE users SET name=?, password=? WHERE email=?";

	        PreparedStatement ps = con.prepareStatement(query);
	        ps.setString(1, user.getName());
	        ps.setString(2, user.getPassword());
	        ps.setString(3, user.getEmail());

	        int rows = ps.executeUpdate();

	        if (rows > 0) {
	            status = true;
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return status;
	}
	public static List<User> searchUser(String email) {

	    List<User> list = new ArrayList<>();

	    try {
	        Connection con = DBConnection.getConnection();

	        String query = "SELECT * FROM users WHERE email LIKE ?";

	        PreparedStatement ps = con.prepareStatement(query);
	        ps.setString(1, "%" + email + "%");

	        ResultSet rs = ps.executeQuery();

	        while (rs.next()) {
	            User u = new User();
	            u.setName(rs.getString("name"));
	            u.setEmail(rs.getString("email"));
	            u.setPassword(rs.getString("password"));
	            list.add(u);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return list;
	}
}