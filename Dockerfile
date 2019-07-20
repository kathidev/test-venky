FROM openjdk:8-jdk-alpine
VOLUME /tmp
RUN sh -c '/var/lib/jenkins/workspace/war/target/hello-1.0.war kathi.war'

EXPOSE 8761
