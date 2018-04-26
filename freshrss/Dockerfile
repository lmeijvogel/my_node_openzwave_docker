FROM php:7.2.4-apache

ENV FRESHRSS_URL=https://github.com/FreshRSS/FreshRSS/archive/1.10.2.zip

RUN apt-get update \
    && apt-get install unzip \
    && apt-get clean

# `curl --location` follows redirects
RUN cd /var/www \
    && curl --location ${FRESHRSS_URL} >freshrss.zip \
    && unzip /var/www/freshrss.zip \
    && mv /var/www/FreshRSS-1.10.2/* /var/www/html/

WORKDIR /var/www/html

RUN chown -R www-data ./data
