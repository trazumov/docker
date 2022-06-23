CREATE DATABASE dbtest;
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL ON dbtest.* TO 'user'@'localhost';
FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY '12345';