# FROM openjdk:21-jdk-slim
# LABEL id.fdjrn.msa.openshift-demo.authors="fdjrn"

# COPY target/openshift-demo-0.0.1-SNAPSHOT.jar openshift-demo-0.0.1.jar

# ENTRYPOINT ["java", "-jar","/openshift-demo-0.0.1.jar"]


FROM maven:3.9.8-eclipse-temurin-21-alpine AS build
LABEL authors="fadjrin"
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

FROM eclipse-temurin:21.0.3_9-jdk
WORKDIR /app
COPY --from=build /app/target/openshift-demo*.jar /sb-demo.jar
CMD ["java","-jar","-Dspring.datasource.url=jdbc:postgresql://db:5432/spring_boot_simple","/app.jar"]

