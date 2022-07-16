# Docker
Alpine Linux or Debian Buster

Create folders data/wordpress and data/mariadb
Install git / vim / make / docker / docker-compose
sudo docker run hello-world
sudo vi /etc/hosts

# MariaDB
Install mariadb-server
std file 50-server.conf
MariaDB configuration files:
https://gdevops.gitlab.io/tuto_databases/mariadb/installation/debian/10/10.html#mariadb-configuration-files

Why use % in MySQL Mariadb
https://www.daniloaz.com/en/how-to-create-a-user-in-mysql-mariadb-and-grant-permissions-on-a-specific-database/

Create DB / user / root user

Connect to DB
docker exec -it container_id /bin/bash
mysql -u root -p
SHOW DATABASES;

# Wordpress

Установка
https://losst.ru/nastrojka-php-fpm

www.conf - common information
wp-config.php - DB USER PASS HOST
install.sh - automate configuring of site and connection to DB using wp-cli

What is this new /run filesystem?
https://unix.stackexchange.com/questions/13972/what-is-this-new-run-filesystem

start /usr/sbin/php-fpm7.3 -F
https://linux.die.net/man/8/php-fpm

# Nginx

Установка SSL-сертификата и переход к протоколу HTTPS – отличный способ повысить безопасность соединений между браузером и сервером. SSL-соединение является крайне рекомендованным для всех сайтов, где требуется пользовательская регистрация.

SSL certificate
https://stackoverflow.com/questions/10175812/how-to-generate-a-self-signed-ssl-certificate-using-openssl

default самый стандартный и минимальный
https://faun.pub/setting-up-ssl-certificates-for-nginx-in-docker-environ-e7eec5ebb418

