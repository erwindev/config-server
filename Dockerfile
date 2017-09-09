FROM java:8-jre
MAINTAINER Erwin Alberto

ENV SERVER_PORT 8081
EXPOSE 8081

ENV SPRING_CLOUD_CONFIG_SERVER_GIT_USERNAME=xxxx
ENV SPRING_CLOUD_CONFIG_SERVER_GIT_PASSWORD=xxxx
ENV SPRING_CLOUD_CONFIG_SERVER_GIT_URI=xxxx

RUN apt-get update
RUN mkdir /app
COPY ./build/libs/configuration-service.jar /app/

ENTRYPOINT ["java", "-jar", "/app/configuration-service.jar"]



