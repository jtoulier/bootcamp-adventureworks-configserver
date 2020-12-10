FROM openjdk:11-jre
LABEL maintainer="BCP-DEMO-SPRINGBOOT"
ENV spring.application.name configserver

COPY build/libs/configserver-*SNAPSHOT.jar /opt/configserver.jar
ENTRYPOINT ["java", "-Djava.file.encoding=UTF-8", "-jar", "/opt/configserver.jar"]