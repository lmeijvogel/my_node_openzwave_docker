FROM php:7.2.5-apache-stretch

RUN apt-get update \
    && apt-get install -y curl \
    && rm -rf /var/lib/apt/lists/*

ENV DOWNLOAD_LINK https://download.dokuwiki.org/src/dokuwiki/dokuwiki-stable.tgz
ENV DOWNLOAD_TEMP /tmp/dokuwiki-stable.tgz

RUN curl ${DOWNLOAD_LINK} > ${DOWNLOAD_TEMP} \
    && tar xf ${DOWNLOAD_TEMP} --strip 1 \
    && rm ${DOWNLOAD_TEMP}

RUN chown -R www-data:www-data .
