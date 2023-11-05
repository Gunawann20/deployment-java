FROM openjdk:8-jdk-alpine

VOLUME /tmp
ARG PORT
ENV PORT=${PORT}
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
