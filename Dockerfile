FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD  target/var/lib/jenkins/workspace/war/target/hello-1.0.war kathi.war
RUN sh -c 'touch /kathi.war'
EXPOSE 8761
