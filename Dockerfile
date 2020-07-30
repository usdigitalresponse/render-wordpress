# You can change this to a different version of WordPress available at
# https://hub.docker.com/_/wordpress
FROM wordpress:5.4.2-apache

USER root:root

RUN apt-get update && apt-get install -y git mysql-client vim

USER www-data:www-data
RUN git clone https://github.com/usdigitalresponse/election-websites/ /var/www/html/wp-content/themes/ctcl
