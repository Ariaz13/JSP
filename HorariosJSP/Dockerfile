FROM mysql:latest

ENV MYSQL_DATABASE="horarios"
ENV MYSQL_ROOT_PASSWORD="root"

COPY ./Database/database.sql /docker-entrypoint-initdb.d/database.sql
