FROM debian:buster

LABEL version="1.0"
LABEL description="MariaDB Server"

RUN apt-get update
RUN apt-get install mariadb-server -y

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./createdb.sql /

# start SQl server to make an insert
RUN service mysql start && mysql < createdb.sql
RUN rm -f createdb.sql

EXPOSE 3306

#Note that, in a container, we normally run mysqld directly, rather than running mysqld_safe
# or running MariaDB as a service. Containers restart can be handled by the container service.
CMD ["mysqld"]
