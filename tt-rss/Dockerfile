FROM php:7.2.4-apache

RUN apt-get update \
    && apt-get install -y git libpq-dev \
    && rm -rf /var/lib/apt/lists/*

ENV TT_RSS_REMOTE=https://git.tt-rss.org/fox/tt-rss
ENV TT_RSS_REVISION=32101389b6

RUN cd /var/www \
    && rm -rf html \
    && git clone ${TT_RSS_REMOTE} html \
    && cd html \
    && git checkout ${TT_RSS_REVISION} \
    && chown -R www-data .

RUN docker-php-source extract \
    && docker-php-ext-install pgsql pdo pdo_pgsql \
    && docker-php-ext-enable pgsql pdo pdo_pgsql \
    && docker-php-source delete

WORKDIR /var/www/html
