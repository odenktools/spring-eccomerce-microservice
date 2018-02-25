FROM openjdk:8-jre-alpine
COPY ./build/libs/location-service-0.0.1-SNAPSHOT.jar /usr/src/location-service/
WORKDIR /usr/src/location-service
CMD ["java", "-jar", "location-service-0.0.1-SNAPSHOT.jar"]
EXPOSE 9001