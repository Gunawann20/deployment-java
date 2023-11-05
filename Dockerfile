
FROM eclipse-temurin:20-jre
ARG PORT
ENV PORT=${PORT}
COPY target/*.jar app.jar
RUN useradd runtime
USER runtime
ENTRYPOINT [ "java", "-Dserver.port=${PORT}", "-jar", "app.jar" ]
