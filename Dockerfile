FROM php:8.0-apache
RUN apt-get update && apt-get install --yes --no-install-recommends \
    libssl-dev

RUN pecl install mongodb \
    && docker-php-ext-enable mongodb

WORKDIR /var/www/html

COPY index.php index.php
COPY src/ src
EXPOSE 80
