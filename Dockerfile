FROM amazoncorretto:17

CMD ["./mvnw", "clean", "package"]

COPY ./build/libs/AWScicd-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", ".jar", "app.jar"]

## 1. Build stage: Use Maven to build the application
#FROM maven:3.8.8-openjdk-17 as builder
#WORKDIR /app
#COPY . .
#RUN ./mvnw clean package -DskipTests
#
## 2. Runtime stage: Use a lightweight JDK for running the application
#FROM amazoncorretto:17
#WORKDIR /app
#COPY --from=builder /app/target/AWScicd-0.0.1-SNAPSHOT.jar app.jar
#ENTRYPOINT ["java", "-jar", "app.jar"]
