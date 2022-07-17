FROM debian:buster

LABEL version="1.0"
LABEL description="MariaDB Server"

RUN apt-get update && apt-get install mariadb-server -y

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./settings.sql /

RUN service mysql start && mysql < settings.sql && rm -f settings.sql

EXPOSE 3306

#Note that, in a container, we normally run mysqld directly, rather than running mysqld_safe
# or running MariaDB as a service. Containers restart can be handled by the container service.
CMD ["mysqld"]
