mysql <<EOF
CREATE DATABASE IF NOT EXISTS {$MARIADB_DATABASE};
CREATE USER IF NOT EXISTS '{$MARIADB_USER}'@'%' IDENTIFIED BY '{$MARIADB_PASSWORD}';
GRANT ALL PRIVILEGES ON {$MARIADB_DATABASE}.* TO '{$MARIADB_USER}'@'%' IDENTIFIED BY '{$MARIADB_PASSWORD}';
ALTER USER 'root'@'localhost' IDENTIFIED BY '12345';
FLUSH PRIVILEGES;
EOF