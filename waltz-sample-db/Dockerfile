FROM postgres:10

ENV POSTGRES_USER=waltz \
    POSTGRES_PASSWORD=waltz \
    POSTGRES_DB=waltz

ADD dump.1.35.postgres.tar.gz /docker-entrypoint-initdb.d/

EXPOSE 5432
 

