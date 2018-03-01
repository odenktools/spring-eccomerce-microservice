FROM openjdk:8-jre-alpine

COPY ./build/libs/gateway-service-0.0.1-SNAPSHOT.jar /usr/src/gateway-service/
WORKDIR /usr/src/gateway-service
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "gateway-service-0.0.1-SNAPSHOT.jar"]
EXPOSE 4000