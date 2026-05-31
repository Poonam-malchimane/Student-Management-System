#!/bin/bash

# ========================================
# Local Docker Testing Script
# ========================================
# Use this to test your Docker build locally before deploying to Railway

echo "🐳 Building Student Management System Docker Image..."
echo "================================================"

# Build the Docker image
docker build -t student-management-system:latest .

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Docker build successful!"
    echo ""
    echo "To run locally (requires local MySQL):"
    echo "docker run -p 8080:8080 \\"
    echo "  -e DB_URL='jdbc:mysql://host.docker.internal:3306/student_db?useSSL=false&serverTimezone=UTC' \\"
    echo "  -e DB_USER='root' \\"
    echo "  -e DB_PASS='your_password' \\"
    echo "  student-management-system:latest"
    echo ""
    echo "Then access: http://localhost:8080"
else
    echo ""
    echo "❌ Docker build failed. Check the error messages above."
    exit 1
fi
