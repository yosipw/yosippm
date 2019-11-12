FROM openjdk:8-jdk-alpine
VOLUME /tmp

# The application's jar file
ARG JAR_FILE=target/ppmtool-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} ppmtool.jar

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/ppmtool.jar"]