FROM php:7.4-apache
COPY ./php/php.ini /usr/local/etc/php/
COPY ./apache/*.conf /etc/apache2/sites-enabled/

RUN set -x &&\
    apt-get update &&\
    apt-get install -y \
        git \
        vim \
        zip \
        unzip \
        zlib1g-dev \
        libpq-dev &&\
    docker-php-ext-install pdo_mysql

COPY --from=composer:2.0.11 /usr/bin/composer /usr/bin/composer
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer
ENV PATH $PATH:/composer/vendor/bin

WORKDIR /var/www/html/laravel

RUN mv /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled &&\
    /bin/sh -c a2enmod rewrite &&\
    composer global require "laravel/installer"
