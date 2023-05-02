# Use an OpenJDK 11 image as the base image
FROM adoptopenjdk:11-jre-hotspot

# Set the working directory to /app
WORKDIR /app

# Copy the Spring Boot JAR file to the container
COPY target/my-spring-boot-app.jar my-spring-boot-app.jar

# Expose port 8080
EXPOSE 8080

# Set the command to run the Spring Boot JAR file
CMD ["java", "-jar", "my-spring-boot-app.jar"]
