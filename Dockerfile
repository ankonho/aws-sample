FROM --platform=linux/amd64 eclipse-temurin:17-jdk-alpine
CMD ["./gradlew", "build"]
ARG JAR_FILE=build/libs/demo-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]