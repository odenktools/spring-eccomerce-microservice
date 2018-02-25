# SpringBoot MicroService Sample

STEP 1
======

```bash
gradlew build --refresh-dependencies
```

STEP 2
======

```bash
java -jar build/libs/config-service-0.0.1-SNAPSHOT.jar

docker build -t odenktools/spring-config-service:v1 --rm=true .
```

STEP 3
======

```bash
docker run --name spring-config-service -p 8888:8888 odenktools/spring-config-service:v1
```

OR

```bash
docker run -p 8888:8888 odenktools/spring-config-service:v1
```

STEP 4
======

http://192.168.99.100:8888/

STEP 5
======

```bash
docker stop spring-config-service
```

STEP 6
======

```bash
docker start spring-config-service
```

STEP 7
======

http://192.168.99.100:8888/


OTHER FUNCTION
==============

```bash
docker-compose up -d
docker-compose up
docker-compose stop
docker-compose down
```
