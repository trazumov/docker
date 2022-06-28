FROM debian:buster

LABEL version="1.0"
LABEL description="Wordpress Server"

RUN apt-get update
# php7.3 already exists?
RUN apt-get -y install php7.3 php-mysqli php-fpm mariadb-client
COPY ./www.conf /etc/php/7.3/fpm/pool.d/

ADD https://ru.wordpress.org/wordpress-6.0-ru_RU.tar.gz /var/www/
#WORKDIR /var/www/
RUN cd /var/www/ && tar -xzvf wordpress-6.0-ru_RU.tar.gz
RUN rm -f /var/www/wordpress-6.0-ru_RU.tar.gz && rm -f /var/www/wordpress/wp-config-sample.php
COPY ./wp-config.php ./var/www/wordpress/
EXPOSE 9000
RUN mkdir -p ./run/php/
# Force to stay in foreground and ignore daemonize option from configuration file.
CMD ./usr/sbin/php-fpm7.3 -F