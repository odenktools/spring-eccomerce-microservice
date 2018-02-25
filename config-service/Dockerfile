FROM openjdk:8-jre-alpine
COPY ./build/libs/config-service-0.0.1-SNAPSHOT.jar /usr/src/config-service/
WORKDIR /usr/src/config-service
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "config-service-0.0.1-SNAPSHOT.jar"]
EXPOSE 8888