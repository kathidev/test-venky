FROM openjdk
MAINTAINER kathiram9@gmail.com
ADD target//var/lib/jenkins/workspace/war/target/hello-1.0.war
EXPOSE 8761

