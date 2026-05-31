# ─── Stage 1: Build the WAR with Maven ─────────────────────────────────────
FROM maven:3.9-eclipse-temurin-17 AS build

WORKDIR /app

# Copy pom and download dependencies first (layer caching)
COPY pom.xml .
RUN mvn dependency:go-offline -q

# Copy all source code
COPY src/ src/

# Build the WAR
RUN mvn clean package -DskipTests -q

# ─── Stage 2: Deploy to Tomcat 10 ──────────────────────────────────────────
FROM tomcat:10.1-jre17

# Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the built WAR into Tomcat webapps as ROOT (so it runs at /)
COPY --from=build /app/target/StudentManagementSystem.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
