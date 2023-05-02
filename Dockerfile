# Use an OpenJDK 11 image as the base image
FROM adoptopenjdk:11-jre-hotspot

# Set the working directory to /app
WORKDIR /app

# Copy the Spring Boot JAR file to the container
COPY target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar

# Expose port 8084
EXPOSE 8084

# Set the command to run the Spring Boot JAR file
CMD ["java", "-jar", "spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar"]
