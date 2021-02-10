# Start with a base image containing Java runtime
FROM openjdk:8
# Add Maintainer Info
LABEL maintainer="YoYoTheDOco"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Add the application's jar to the container
COPY ./target/cicd-applied-to-spring-boot-java-app-0.0.1-SNAPSHOT.jar TEST_JAR.jar
	 
# Run the jar file 
CMD java -jar TEST_JAR.jar
