FROM openjdk:8-jre-alpine
COPY ./build/libs/account-service-0.0.1-SNAPSHOT.jar /usr/src/account-service/
WORKDIR /usr/src/account-service
CMD ["java", "-jar", "account-service-0.0.1-SNAPSHOT.jar"]
EXPOSE 9002