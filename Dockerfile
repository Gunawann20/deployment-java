
FROM eclipse-temurin:20-jre
ARG PORT
ENV PORT=${PORT}
COPY target/pragos-academy-api-0.0.1-SNAPSHOT.jar app.jar
RUN useradd runtime
USER runtime
ENTRYPOINT [ "java", "-Dserver.port=${PORT}", "-jar", "app.jar" ]
