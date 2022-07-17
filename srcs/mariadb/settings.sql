CREATE DATABASE IF NOT EXISTS dbtest;
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON dbtest.* TO 'user'@'%' IDENTIFIED BY 'password';
ALTER USER 'root'@'localhost' IDENTIFIED BY '12345';
FLUSH PRIVILEGES;
