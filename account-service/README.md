# SpringBoot Account Service

STEP 1
======

```bash
gradlew build --refresh-dependencies
```

STEP 2
======

```bash
java -jar build/libs/account-service-0.0.1-SNAPSHOT.jar

docker build -t odenktools/spring-account-service:v1 --rm=true .
```

STEP 3
======

```bash
docker run --name spring-account-service -p 9002:9002 odenktools/spring-account-service:v1
```

OR

```bash
docker run -p 9002:9002 odenktools/spring-registry-service:v1
```

STEP 4
======

http://192.168.99.100:9002/

STEP 5
======

```bash
docker stop spring-account-service
```

STEP 6
======

```bash
docker start spring-account-service
```

STEP 7
======

http://192.168.99.100:9002/


OTHER FUNCTION
==============

```bash
docker-compose up -d
docker-compose up
docker-compose stop
docker-compose down
```
