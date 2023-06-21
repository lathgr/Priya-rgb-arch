# FROM tomcat:latest
# RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
# COPY ./target/*.war /usr/local/tomcat/webapps
# COPY **/*.war /usr/local/tomcat/webapps

FROM openjdk:8-jdk-alpine
COPY target/springOAuth2-0.0.1-SNAPSHOT.jar springOAuth2-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/springOAuth2-0.0.1-SNAPSHOT.jar"]
