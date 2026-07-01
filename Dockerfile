# Use OpenJDK 17 as the base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the Java source code
COPY Calculator.java .

# Compile the Java program
RUN javac Calculator.java

# Run the application
CMD ["java", "Calculator"]
