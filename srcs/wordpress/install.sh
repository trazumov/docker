if ! [ -d "/var/www/wordpress/wp-config.php" ]; then
    wp core config --dbhost=${WORDPRESS_MARIADB_HOST} --dbname=${MARIADB_DATABASE} --dbuser=${MARIADB_USER} --dbpass=${MARIADB_PASSWORD} --allow-root
    wp core install --url=${WORDPRESS_HOST} --title=${WORDPRESS_TITLE} --admin_user=${WORDPRESS_ADMIN_USER} --admin_password=${WORDPRESS_ADMIN_PASSWORD} --admin_email=${WORDPRESS_ADMIN_EMAIL} --skip-email --allow-root
    wp user create ${WORDPRESS_USER} ${WORDPRESS_EMAIL} --allow-root --role=subscriber --user_pass=${WORDPRESS_PASSWORD}
fi

/usr/sbin/php-fpm7.3 -F