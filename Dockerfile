FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD  /var/lib/jenkins/workspace/war/target/hello-1.0.war
RUN sh -c 'touch /hello-1.0.war'
EXPOSE 8761
