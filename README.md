# Compose

This repository has a simple docker compose configuration for
building and deploying a (pre-built) Waltz image and connecting
it to a pre-populated sample database.


# Links

Something similar can be achieved with simple links:

```
  docker run -d --name waltz_db waltz_example_db:1.26_20200623
  docker run -d --name waltz_web --link waltz_db:postgres waltz-web
```
