FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD  target/oms-eureka-service-0.0.1-SNAPSHOT.jar oms-eureka.jar
RUN sh -c 'touch /oms-eureka.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/oms-eureka.jar"]
EXPOSE 8761
