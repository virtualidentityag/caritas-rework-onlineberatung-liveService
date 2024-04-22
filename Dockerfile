FROM openjdk:17-oracle
VOLUME ["/tmp","/log"]
EXPOSE 8080
ARG JAR_FILE
COPY ./LiveService.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
