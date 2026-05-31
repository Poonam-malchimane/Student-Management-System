# 🎓 Student Management System

A full-featured web application for managing student records with user authentication, built using Java EE technologies.

## 🌐 Live Demo
🚀 **Deployed on Railway**: [Your Live URL Here]

## 💻 Technologies Used
- **Backend**: Java 17, JSP, Servlets, JDBC
- **Database**: MySQL 8.0
- **Server**: Apache Tomcat 10.1
- **Build Tool**: Maven
- **Frontend**: HTML, CSS, Bootstrap 5, JavaScript
- **Deployment**: Docker, Railway

## ✨ Features
- 👤 **User Authentication**: Secure registration and login system
- ➕ **Add Students**: Create new student records
- 📋 **View Students**: Display all student records in a table
- ✏️ **Edit Students**: Update existing student information
- 🗑️ **Delete Students**: Remove student records
- 🔍 **Search Functionality**: Search users by email
- 🔐 **Session Management**: Secure session handling
- 📱 **Responsive UI**: Bootstrap-based responsive design

## 🏗️ Architecture
- **Design Pattern**: MVC (Model-View-Controller)
- **Data Access**: DAO (Data Access Object) Pattern
- **Layers**:
  - **Model**: `User.java`, `Student.java`
  - **DAO**: `UserDAO.java`, `StudentDAO.java`, `DBConnection.java`
  - **Controller**: Servlets (Login, Register, Edit, Update, Delete, Logout)
  - **View**: JSP pages

## 🚀 Deployment Options

### Option 1: Deploy to Railway (Recommended)
**Quick Start**: Follow [`RAILWAY_DEPLOYMENT_GUIDE.md`](RAILWAY_DEPLOYMENT_GUIDE.md)

1. Login to [Railway.app](https://railway.app)
2. Deploy from GitHub repository
3. Add MySQL database
4. Configure environment variables
5. Run database schema
6. Generate domain and go live! 🎉

**See**: [`DEPLOYMENT_CHECKLIST.md`](DEPLOYMENT_CHECKLIST.md) for step-by-step verification

### Option 2: Local Development Setup
1. **Prerequisites**:
   - JDK 17 or higher
   - Apache Tomcat 10.x
   - MySQL 8.0
   - Maven 3.9+

2. **Database Setup**:
   ```bash
   mysql -u root -p < database/schema.sql
   ```

3. **Build & Run**:
   ```bash
   mvn clean package
   # Deploy target/StudentManagementSystem.war to Tomcat webapps/
   ```

### Option 3: Docker
```bash
# Build image
docker build -t student-management-system .

# Run container
docker run -p 8080:8080 \
  -e DB_URL='jdbc:mysql://your-mysql-host:3306/student_db' \
  -e DB_USER='root' \
  -e DB_PASS='your_password' \
  student-management-system
```

## 📁 Project Structure
```
├── src/main/
│   ├── java/
│   │   ├── dao/              # Database access layer
│   │   ├── model/            # Data models
│   │   └── servlet/          # Controllers
│   └── webapp/
│       ├── WEB-INF/
│       │   └── web.xml       # Servlet mappings
│       └── *.jsp             # View pages
├── database/
│   └── schema.sql            # Database schema
├── Dockerfile                # Docker configuration
├── railway.toml              # Railway deployment config
├── pom.xml                   # Maven dependencies
└── RAILWAY_DEPLOYMENT_GUIDE.md

```

## 🔐 Environment Variables

Required for deployment:

| Variable | Description | Example |
|----------|-------------|---------|
| `DB_URL` | JDBC connection string | `jdbc:mysql://host:3306/railway` |
| `DB_USER` | Database username | `root` |
| `DB_PASS` | Database password | `your_secure_password` |

See `.env.example` for template.

## 🧪 Test Credentials

After running `database/schema.sql`:

- **Admin Account**
  - Email: `admin@test.com`
  - Password: `admin123`

- **Demo Account**
  - Email: `demo@test.com`
  - Password: `demo123`

## 📊 Database Schema

### Users Table
```sql
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### Students Table
```sql
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    course VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
```

## 📸 Screenshots
<img width="1920" height="1080" alt="Screenshot 2026-04-19 161803" src="https://github.com/user-attachments/assets/f5de5295-ea46-4299-bf56-3bc723b64274" />
<img width="1920" height="1080" alt="Screenshot 2026-04-19 161343" src="https://github.com/user-attachments/assets/dc9607e8-41a2-438c-8fdf-1a10d0b4ab98" />
<img width="1920" height="1080" alt="Screenshot 2026-04-19 161512" src="https://github.com/user-attachments/assets/04975f1f-e42b-4506-a4da-1a64851d1928" />
<img width="1920" height="1080" alt="Screenshot 2026-04-19 161644" src="https://github.com/user-attachments/assets/db70cfb3-0a17-4bc2-9e9d-c17165907ca9" />
<img width="1920" height="1080" alt="Screenshot 2026-04-19 161732" src="https://github.com/user-attachments/assets/f3987346-4e3d-4ad0-93c6-2942894a2e5b" />

## 🛠️ Development

### Prerequisites
- JDK 17+
- Maven 3.9+
- MySQL 8.0+
- Apache Tomcat 10.1+

### Build Commands
```bash
# Clean and build
mvn clean package

# Run tests (if available)
mvn test

# Build Docker image
docker build -t student-management-system .
```

### Local Testing
```bash
# Test Docker build
./docker-test.sh

# Or build manually
mvn clean package
# Deploy target/StudentManagementSystem.war to Tomcat
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is open source and available for educational purposes.

## 👨‍💻 Author

**Poonam Malchimane**
- GitHub: [@Poonam-malchimane](https://github.com/Poonam-malchimane)

## 🙏 Acknowledgments

- Bootstrap for responsive UI components
- Apache Tomcat for servlet container
- MySQL for database management
- Railway for easy deployment

---

## 📚 Additional Resources

- 📖 [Full Deployment Guide](RAILWAY_DEPLOYMENT_GUIDE.md)
- ✅ [Deployment Checklist](DEPLOYMENT_CHECKLIST.md)
- 🗃️ [Database Schema](database/schema.sql)
- 🐳 [Dockerfile](Dockerfile)

---

**⭐ If you find this project useful, please give it a star!**

**🚀 Ready to deploy? Start with [RAILWAY_DEPLOYMENT_GUIDE.md](RAILWAY_DEPLOYMENT_GUIDE.md)**
