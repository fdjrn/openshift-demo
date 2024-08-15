FROM openjdk:21-jdk-slim
LABEL id.fdjrn.msa.openshift-demo.authors="fdjrn"

COPY target/openshift-demo-0.0.1-SNAPSHOT.jar openshift-demo-0.0.1.jar

ENTRYPOINT ["java", "-jar","/openshift-demo-0.0.1.jar"]