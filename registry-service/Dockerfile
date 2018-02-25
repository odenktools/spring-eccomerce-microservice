FROM openjdk:8-jre-alpine

COPY ./build/libs/registry-service-0.0.1-SNAPSHOT.jar /usr/src/registry-service/
WORKDIR /usr/src/registry-service
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "registry-service-0.0.1-SNAPSHOT.jar"]
EXPOSE 8761