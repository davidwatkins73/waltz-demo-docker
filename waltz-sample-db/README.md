# Docker: waltz-sample-db

This project contains the code needed to create a docker image which contains a sample database for Waltz.  It uses postgres for the database engine.

## Preparing new releases

Please  migrate the same database instance going forward, this keeps the sample database consistent with previous releases and will be used for automated integration testing.

- Dump a new copy of the database using something like: `pg_dump -d waltz -U waltz -p 5632 -h localhost > dump.sql`
- Compress it using `tar czf dump.<version>.postgres.tar.gz dump.sql`
- build new image `docker build --tag davidwatkins73/waltz-sample-db:<version> .` and `docker build --tag davidwatkins73/waltz-sample-db .` (for the automatic latest tag).
- update the `docker-compose.yml` file in the parent directory to point to new version
- test the image 
- if happy, push it to docker hub with `docker push davidwatkins73/waltz-sample-db:<version>` and `docker push davidwatkins73/waltz-sample-db`
- **Note:** we don't check in the raw `dump.sql` file, be we _do_ checkin the gz. 