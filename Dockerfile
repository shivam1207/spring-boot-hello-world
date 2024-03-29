# Use an OpenJDK 11 image as the base image
FROM adoptopenjdk:8-jre-hotspot

# Set the working directory to /app
WORKDIR /app

# Copy the Spring Boot JAR file to the container
COPY target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar

#cp app/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar C:\Jarfromdocker

#cd C:\Jarfromdocker

# Expose port 8081
#EXPOSE 8081

# Set the command to run the Spring Boot JAR file
#CMD ["java", "-jar", "spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar"]
