# Use a base image with Java and Maven pre-installed
FROM maven:3.8-openjdk-11

# Set the working directory inside the container
WORKDIR /app

# Copy the source code into the container
COPY . .

# Build the Java application using Maven
RUN mvn clean package

# Set the command to run when the container starts
CMD ["java", "-cp", "target/classes", "Main"]
