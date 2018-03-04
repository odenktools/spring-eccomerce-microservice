# SpringBoot Config Service

Integer maximus eget arcu vitae lobortis. Proin non molestie orci. Integer fringilla odio id libero bibendum elementum id eu mi. Proin dignissim nisi ut dictum pellentesque. Sed varius aliquet velit quis ornare. Vivamus semper blandit orci vitae pharetra. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed elit neque, tempus at sodales vel, molestie quis dolor. Vestibulum pellentesque arcu metus, vitae tempus purus elementum in. Mauris quis sollicitudin sem, sit amet mollis sem!

Mauris consequat rhoncus massa id porttitor. Nullam semper tristique orci at lobortis. Aliquam faucibus tortor ac nunc pellentesque volutpat. Mauris pharetra varius placerat. In finibus ante vel nulla vehicula, in posuere lectus feugiat. Proin convallis ornare tristique. Aenean nec lacinia risus, eu porta augue. Pellentesque sollicitudin vehicula lorem eget hendrerit.

STEP 1
======

```bash
gradlew build --refresh-dependencies
```

STEP 2
======

```bash
java -jar build/libs/location-service-0.0.1-SNAPSHOT.jar

docker build -t odenktools/spring-location-service:v1 --rm=true .
```

STEP 3
======

```bash
docker run --name spring-location-service -p 9001:9001 odenktools/spring-location-service:v1
```

OR

```bash
docker run -p 9001:9001 odenktools/spring-location-service:v1
```

STEP 4
======

http://192.168.99.100:9001/

STEP 5
======

```bash
docker stop spring-location-service
```

STEP 6
======

```bash
docker start spring-location-service
```

STEP 7
======

```bash
http://localhost:9001/locations/Algeria
```

```bash
curl -X GET \
  http://localhost:9001/locations/all \
  -H 'content-type: application/json'
```

```bash
  http://localhost:9001/locations/regions/Jakarta \
  -H 'content-type: application/json'
```

```bash
curl -X GET \
  http://localhost:9001/locations/regions/all \
  -H 'content-type: application/json'
```

```bash
curl -X GET \
  http://localhost:9001/locations/country/all \
  -H 'content-type: application/json'
```

```bash
curl -X POST \
  http://localhost:9001/locations/country/create \
  -H 'content-type: application/json' \
  -d '{
	"code": "zz",
	"active": 1,
	"name": "zong",
	"slug": "zong"
}'
```

OTHER FUNCTION
==============

```bash
docker-compose up -d

docker-compose up

docker-compose stop

docker-compose down
```
