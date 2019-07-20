FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD  /var/lib/jenkins/workspace/docker/target kathi.war
RUN sh -c 'touch /kathi.war'
EXPOSE 8761
