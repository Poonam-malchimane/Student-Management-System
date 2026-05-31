# 🚂 Railway Deployment Guide - Student Management System

## 📋 Prerequisites
- Railway account (already done ✅)
- GitHub repository pushed (already done ✅)
- Project files ready (already done ✅)

---

## 🚀 Step-by-Step Deployment Instructions

### **Step 1: Login to Railway**
1. Go to [railway.app](https://railway.app)
2. Login with your account
3. Click **"New Project"**

---

### **Step 2: Deploy from GitHub**
1. Select **"Deploy from GitHub repo"**
2. Choose your repository: `Poonam-malchimane/Student-Management-System`
3. Click **"Deploy Now"**
4. Railway will automatically detect the Dockerfile and start building

---

### **Step 3: Add MySQL Database**
1. In your Railway project dashboard, click **"+ New"**
2. Select **"Database"**
3. Choose **"Add MySQL"**
4. Railway will provision a MySQL database automatically
5. **IMPORTANT**: Note down these credentials (shown in the Variables tab):
   - `MYSQL_HOST`
   - `MYSQL_PORT`
   - `MYSQL_USER` (usually `root`)
   - `MYSQL_PASSWORD`
   - `MYSQL_DATABASE` (usually `railway`)

---

### **Step 4: Configure Environment Variables**
1. Go to your **Web Service** (the Java app, not the database)
2. Click on **"Variables"** tab
3. Add these **three variables**:

   ```
   Variable Name: DB_URL
   Value: jdbc:mysql://MYSQL_HOST:MYSQL_PORT/railway?useSSL=false&serverTimezone=UTC
   
   Variable Name: DB_USER
   Value: root
   
   Variable Name: DB_PASS
   Value: [Your MySQL Password from Step 3]
   ```

   **Example**:
   ```
   DB_URL = jdbc:mysql://containers-us-west-123.railway.app:7890/railway?useSSL=false&serverTimezone=UTC
   DB_USER = root
   DB_PASS = mK9xL2pQ5rN8tV3w
   ```

4. Click **"Add"** for each variable

---

### **Step 5: Initialize Database Schema**
You need to create the database tables. You have **two options**:

#### **Option A: Using Railway MySQL Client (Recommended)**
1. In Railway dashboard, click on your **MySQL database**
2. Go to **"Connect"** tab
3. Copy the **MySQL Connection URL**
4. Use any MySQL client (MySQL Workbench, DBeaver, or online tool)
5. Connect using the URL
6. Run the SQL script from `/database/schema.sql` file in your repo

#### **Option B: Using Railway CLI**
```bash
# Install Railway CLI
npm install -g @railway/cli

# Login
railway login

# Link to your project
railway link

# Connect to MySQL
railway connect mysql

# Then run the schema.sql commands
```

---

### **Step 6: Generate Domain & Access Your App**
1. In Railway dashboard, go to your **Web Service**
2. Click on **"Settings"** tab
3. Scroll to **"Networking"** section
4. Click **"Generate Domain"**
5. You'll get a URL like: `https://student-management-system-production-xxxx.up.railway.app`
6. Click the URL to open your live application! 🎉

---

## ✅ Expected URLs

Your application will be live at:
```
https://your-app-name.up.railway.app/
```

### Available Pages:
- **Home/Login**: `/` or `/index.jsp`
- **Register**: `/register.jsp`
- **Dashboard**: `/dashboard.jsp` (after login)
- **Add Student**: `/addStudent.jsp`
- **View Users**: `/viewUsers.jsp`

---

## 🧪 Test Your Deployment

### Default Test Credentials (from schema.sql):
- **Email**: `admin@test.com`
- **Password**: `admin123`

OR

- **Email**: `demo@test.com`
- **Password**: `demo123`

---

## 🔧 Troubleshooting

### Issue: "Cannot connect to database"
**Solution**: 
- Check environment variables are correctly set
- Ensure DB_URL uses the correct MYSQL_HOST and MYSQL_PORT
- Verify MySQL service is running in Railway

### Issue: "Application failed to start"
**Solution**:
- Check the deployment logs in Railway
- Click on "Deployments" → Latest deployment → "View Logs"
- Look for Java exceptions or connection errors

### Issue: "404 Not Found"
**Solution**:
- Make sure you're accessing the root URL (/) not /StudentManagementSystem/
- The Dockerfile deploys as ROOT.war, so it runs at the base path

### Issue: Tables don't exist
**Solution**:
- You need to manually run the schema.sql script
- Connect to Railway MySQL and execute the SQL commands

---

## 📊 Monitoring Your App

1. **View Logs**: Railway Dashboard → Your Service → "Deployments" → "View Logs"
2. **Check Metrics**: Monitor CPU, Memory, and Network usage
3. **Database Access**: Click MySQL service to view connection details

---

## 🔄 Redeployment

Every time you push to GitHub:
1. Railway automatically detects changes
2. Rebuilds the Docker image
3. Redeploys your application
4. Zero downtime deployment!

---

## 💰 Cost Estimation

- **Free Tier**: Railway provides $5/month free credit
- **Usage**: This app uses minimal resources
- **Expected Cost**: Should run on free tier for development/testing

---

## 🎉 Success Checklist

- [ ] Railway project created
- [ ] MySQL database added
- [ ] Environment variables configured
- [ ] Database schema executed
- [ ] Domain generated
- [ ] Application accessible via URL
- [ ] Login working with test credentials
- [ ] Can add/view/edit/delete students

---

## 📞 Need Help?

If you encounter any issues:
1. Check Railway deployment logs
2. Verify all environment variables
3. Ensure MySQL is running
4. Check database connection string format

---

**🎊 Congratulations! Your Student Management System is now LIVE on Railway!**
