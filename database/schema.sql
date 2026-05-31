-- ========================================
-- Student Management System Database Schema
-- ========================================

-- Create database
CREATE DATABASE IF NOT EXISTS student_db;
USE student_db;

-- ========================================
-- Table: users (for authentication)
-- ========================================
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ========================================
-- Table: students (for student records)
-- ========================================
CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    course VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ========================================
-- Sample Data (Optional - for testing)
-- ========================================

-- Insert a demo user
INSERT INTO users (name, email, password) VALUES 
('Admin User', 'admin@test.com', 'admin123'),
('Demo User', 'demo@test.com', 'demo123');

-- Insert sample students
INSERT INTO students (name, course, email, phone) VALUES 
('John Doe', 'Computer Science', 'john.doe@example.com', '1234567890'),
('Jane Smith', 'Information Technology', 'jane.smith@example.com', '0987654321'),
('Bob Johnson', 'Electronics', 'bob.j@example.com', '5551234567');

-- ========================================
-- Verify Tables Created
-- ========================================
SHOW TABLES;
