FROM debian:buster
LABEL version="1.0"
LABEL description="MariaDB Server"
RUN apt-get update
RUN apt-get install mariadb-server -y
# found information about there server placed is, settings are std
COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./createdb.sql /
#EXPOSE 3306
# start SQl server to make an insert
RUN service mysql start && mysql < createdb.sql
#RUN mkdir -p /var/run/mysqld && mkfifo /var/run/mysqld/mysqld.sock && chown -R mysql /var/run/mysqld
#RUN mysql < createdb.sql
RUN rm -f createdb.sql
#Note that, in a container, we normally run mysqld directly, rather than running mysqld_safe
# or running MariaDB as a service. Containers restart can be handled by the container service.
CMD ["mysqld"]
