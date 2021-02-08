# Docker: waltz-web

## Preparing new release

- Copy the waltz uber jar (found in `/waltz-web/target/waltz-web-jar-with-dependencies.jar`) into this directory and name it `waltz.war`.
- run `docker build --tag davidwatkins73/waltz-web:<vers>` and `docker build --tag davidwatkins73/waltz-web` (to create latest version)
- update the `docker-compose.yml` file in the parent directory to point to new version
- test the image
- if happy, push it to docker hub with `docker push davidwatkins73/waltz-web:1.30` and `docker push davidwatkins73/waltz-web:1.30`
- **Note:** We typically don't check in the uber file in this project as it is large and can be recreated from git tags.

   

 