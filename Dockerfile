FROM maven:3.9-eclipse-temurin-21 AS builder
WORKDIR /app
COPY pom.xml .
COPY ./src ./src
RUN mvn clean package -DskipTests

FROM maven:3.9-eclipse-temurin-21
WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar
CMD ["java", "-jar" , "app.jar"]