FROM openjdk:8-jre-alpine

COPY ./build/libs/registry-0.0.1-SNAPSHOT.jar /usr/src/registry-service/
WORKDIR /usr/src/registry-service
CMD ["java", "-jar", "registry-0.0.1-SNAPSHOT.jar"]
EXPOSE 8761