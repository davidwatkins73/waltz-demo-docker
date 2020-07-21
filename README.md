# Waltz Demo Instances with Docker

## Using Docker Compose

This repository has a simple docker compose configuration for
building and deploying a (pre-built) Waltz image and connecting
it to a pre-populated sample database.

### Quick start

Create a directory and create new file called `docker-compose.yml`, it's contents 
should look like:

```

version: '3'
services:
  postgres: 
    image: davidwatkins73/waltz-sample-db
    ports: 
      - "5632:5432"
    networks:
      - waltz-network

  web:
    image: davidwatkins73/waltz-web
    ports:
      - "80:8443"
    depends_on: 
      - postgres
    networks:
      - waltz-network

networks:
  waltz-network:

```

## Using Links

Something similar can be achieved with simple links:

```
  docker run -d --name waltz_db waltz_example_db:1.26_20200623
  docker run -d --name waltz_web --link waltz_db:postgres waltz-web
```
