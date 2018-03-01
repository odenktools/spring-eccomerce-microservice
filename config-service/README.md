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
java -jar -Dserver.port=8888 build/libs/config-service-0.0.1-SNAPSHOT.jar

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

CASE
====

Jika ``Registry Service`` dijalankan, maka ``Config Service`` akan memberikan konfigurasi yang dibutuhkan oleh ``Registry Service`` diantaranya adalah :

- resources/shared/registry.yml
- resources/shared/application.xml

Perlu diketahui ``nama-file.yml`` harus di setup berdasarkan nama service itu sendiri.

Misalkan pada ``Registry Service`` anda memberikan konfigurasi

```yml
	spring:
	  application:
		name: registry
	...
	...
	...
```

Maka ``nama-file.yml`` yang harus berada pada ``resources/shared/`` adalah ``resources/shared/registry.yml``

Untuk melihat konfigurasi yang terdapat pada ``Config Service``

```
http://localhost:{CONFIG_PORT}/config-service/env
```

```bash
curl http://localhost:8888/config-service/env
```
