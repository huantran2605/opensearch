# Use a base image with Java
FROM openjdk:17-jdk-alpine

# Set the working directory
WORKDIR /

# Copy the jar file
COPY ./target/opensearch-1.0.0.jar app.jar

# Expose the port the app runs on
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "-Dspring.profiles.active=linux", "/app.jar"]
