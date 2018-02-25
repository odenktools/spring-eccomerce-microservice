# SpringBoot Registry Service (EUREKA)

STEP 1
======

```bash
gradlew build --refresh-dependencies
```

STEP 2
======

```bash
java -jar build/libs/registry-service-0.0.1-SNAPSHOT.jar

docker build -t odenktools/spring-registry-service:v1 --rm=true .
```

STEP 3
======

```bash
docker run --name spring-registry-service -p 8761:8761 odenktools/spring-registry-service:v1
```

OR

```bash
docker run -p 8761:8761 odenktools/spring-registry-service:v1
```

STEP 4
======

http://192.168.99.100:8761/

STEP 5
======

```bash
docker stop spring-registry-service
```

STEP 6
======

```bash
docker start spring-registry-service
```

STEP 7
======

http://192.168.99.100:8761/


OTHER FUNCTION
==============

```bash
docker-compose up -d
docker-compose up
docker-compose stop
docker-compose down
```
