# ✅ Railway Deployment Checklist

## Before You Start
- [ ] Railway account created and logged in
- [ ] GitHub repository is up to date
- [ ] You have admin access to the repository

---

## Deployment Steps

### 1️⃣ Railway Project Setup
- [ ] Open [railway.app](https://railway.app)
- [ ] Click "New Project"
- [ ] Select "Deploy from GitHub repo"
- [ ] Choose `Poonam-malchimane/Student-Management-System`
- [ ] Wait for initial deployment to complete

### 2️⃣ MySQL Database Setup
- [ ] Click "+ New" in Railway dashboard
- [ ] Select "Database" → "Add MySQL"
- [ ] Wait for MySQL provisioning
- [ ] Note down the MySQL credentials from Variables tab:
  - [ ] MYSQL_HOST
  - [ ] MYSQL_PORT  
  - [ ] MYSQL_USER
  - [ ] MYSQL_PASSWORD
  - [ ] MYSQL_DATABASE

### 3️⃣ Configure Environment Variables
Go to your **Web Service** (not the MySQL service):
- [ ] Click "Variables" tab
- [ ] Add variable: `DB_URL`
  - Value: `jdbc:mysql://[MYSQL_HOST]:[MYSQL_PORT]/railway?useSSL=false&serverTimezone=UTC`
- [ ] Add variable: `DB_USER`
  - Value: `root`
- [ ] Add variable: `DB_PASS`
  - Value: `[Your MYSQL_PASSWORD from step 2]`
- [ ] Click "Deploy" or wait for auto-redeploy

### 4️⃣ Initialize Database
- [ ] Copy the MySQL connection URL from Railway
- [ ] Connect using MySQL client (Workbench, DBeaver, or CLI)
- [ ] Open `/app/database/schema.sql` file
- [ ] Execute the entire SQL script
- [ ] Verify tables created:
  - [ ] `users` table exists
  - [ ] `students` table exists
  - [ ] Sample data inserted

### 5️⃣ Generate Domain & Access
- [ ] Go to Web Service → Settings → Networking
- [ ] Click "Generate Domain"
- [ ] Copy your live URL (e.g., `https://student-management-system-production-xxxx.up.railway.app`)
- [ ] Open the URL in browser
- [ ] Verify app loads successfully

### 6️⃣ Test Application
- [ ] Access login page (/)
- [ ] Login with test credentials:
  - Email: `admin@test.com`
  - Password: `admin123`
- [ ] Verify dashboard loads
- [ ] Test adding a new student
- [ ] Test viewing students
- [ ] Test editing a student
- [ ] Test deleting a student
- [ ] Test logout functionality

---

## Troubleshooting

### If app doesn't load:
- [ ] Check deployment logs in Railway
- [ ] Verify Dockerfile build succeeded
- [ ] Check Tomcat is starting correctly

### If database connection fails:
- [ ] Verify environment variables are set correctly
- [ ] Check DB_URL format matches Railway MySQL credentials
- [ ] Ensure MySQL service is running
- [ ] Verify DB_PASS has no special characters causing issues

### If login doesn't work:
- [ ] Confirm schema.sql was executed successfully
- [ ] Check if users table has data
- [ ] Review application logs for SQL errors

---

## Success Criteria

✅ **Your deployment is successful when:**
1. Application loads at the generated Railway URL
2. Login page displays correctly
3. Can login with test credentials
4. Dashboard shows properly
5. Can perform CRUD operations on students
6. No errors in Railway logs

---

## Post-Deployment

- [ ] Update README.md with live URL
- [ ] Test all features thoroughly
- [ ] Share the live link with team/instructor
- [ ] Consider custom domain (optional)
- [ ] Monitor Railway usage dashboard

---

## 🎉 Deployment Complete!

**Your Live URL**: ___________________________________

**Deployed On**: ___________________________________

**Status**: [ ] Successful  [ ] Issues (describe below)

**Notes**:
_______________________________________________________
_______________________________________________________
_______________________________________________________

---

**Need help?** Refer to `RAILWAY_DEPLOYMENT_GUIDE.md` for detailed instructions.
