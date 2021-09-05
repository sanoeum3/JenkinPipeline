FROM openjdk:8-jdk-alpine
EXPOSE 8080
ARG JAR_FILE=target/example.smallest-0.0.1-SNAPSHOT.war
ADD ${JAR_FILE} app.war
ENTRYPOINT ["java","-jar","app.war"]