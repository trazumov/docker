FROM debian:buster

LABEL version="1.0"
LABEL description="Wordpress Server"

RUN apt-get update && apt-get -y install php7.3 php-mysqli php-fpm mariadb-client curl
COPY ./www.conf /etc/php/7.3/fpm/pool.d

ADD https://ru.wordpress.org/wordpress-6.0-ru_RU.tar.gz /var/www/
RUN cd /var/www && tar -xzvf wordpress-6.0-ru_RU.tar.gz
RUN rm -f /var/www/wordpress-6.0-ru_RU.tar.gz

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

EXPOSE 9000

RUN mkdir ./run/php/
WORKDIR /var/www/wordpress
COPY	./install.sh /
RUN		chmod 777 /install.sh
CMD		/install.sh