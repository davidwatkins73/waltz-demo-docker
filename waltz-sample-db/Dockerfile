FROM postgres:10

ENV POSTGRES_USER=waltz \
    POSTGRES_PASSWORD=waltz \
    POSTGRES_DB=waltz

COPY dump.sql /docker-entrypoint-initdb.d/

EXPOSE 5432
 

