# Use a base image with Java pre-installed
FROM openjdk:11

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled Java file into the container
COPY Main.java .

# Compile the Java file
RUN javac Main.java

# Set the command to run when the container starts
CMD ["java", "Main"]