FROM --platform=linux/x86_64 openjdk:18-ea-jdk-alpine3.15
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
COPY src/main/resources/application.yaml application.yaml

ENTRYPOINT ["java","-jar","/app.jar"]