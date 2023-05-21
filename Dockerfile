# Use a base image with Java and Maven pre-installed
FROM maven:3.6-openjdk-11

# Set the working directory inside the container
WORKDIR /app

# Copy the source code into the container
COPY . .

# Compile and package the Java application
RUN mvn package

# Set the command to run when the container starts
CMD ["java", "-jar", "target/java-docker-example.jar"]