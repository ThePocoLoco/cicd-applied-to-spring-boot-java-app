# Start with a base image containing Java runtime
FROM openjdk:8

# Add Maintainer Info
LABEL maintainer="YoYoTheDOco"

# Add a volume pointing to /tmp
VOLUME /tmp

ARG JAR_FILE=./target/cicd-applied-to-spring-boot-java-app-0.0.1-SNAPSHOT.jar

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Add the application's jar to the container
COPY ${JAR_FILE} app.jar
	 
# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]