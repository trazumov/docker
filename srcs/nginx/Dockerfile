FROM debian:buster

LABEL version="1.0"
LABEL description="Nginx Server"

RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get install openssl -y
RUN openssl req -x509 -newkey rsa:2048 -nodes \
-keyout /etc/ssl/private/nginx.key \
-out /etc/ssl/certs/nginx.crt \
-sha256 -days 365 -subj "/C=RU/ST=RT/L=Kazan/O=School21/OU=Org/CN=svirgil.42.fr"

COPY ./default etc/nginx/sites-enabled/default

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]