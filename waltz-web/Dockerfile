FROM openjdk:8
MAINTAINER David Watkins <davidwatkins73@gmail.com>

COPY ./w* /tmp/
WORKDIR /tmp
EXPOSE 8449
RUN chmod +x wait-for-it.sh
# need to wait for around 45 secs for database to be ready if it's doing an initial load of data
CMD ["/tmp/wait-for-it.sh", "-t", "45", "postgres:5432", "--", "java", "-cp", ".:/tmp/waltz.jar", "com.khartec.waltz.web.Main"]

