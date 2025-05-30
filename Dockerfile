# Use official OpenJDK base image
FROM eclipse-temurin:22-jdk


# Set working directory inside the container
WORKDIR /app

# Copy JAR file into container
COPY target/*.jar app-0.0.1-SNAPSHOT.jar

# Expose the port (default Spring Boot port)
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app-0.0.1-SNAPSHOT.jar"]
