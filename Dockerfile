FROM maven:3.9.8-eclipse-temurin-21-alpine AS build
LABEL authors="fadjrin"
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

FROM eclipse-temurin:21.0.3_9-jre-alpine

RUN apk update && apk upgrade && apk add --no-cache openssl

WORKDIR /app
COPY --from=build /app/target/openshift-demo*.jar /sb-demo.jar
CMD ["java","-jar","/sb-demo.jar"]

