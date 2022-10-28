FROM php:8.0.3-fpm-alpine

RUN mkdir -p /var/www/${COMPOSE_PROJECT_NAME}

RUN chown www-data:www-data /var/www/${COMPOSE_PROJECT_NAME}

RUN apk update && apk add --no-cache supervisor

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions && sync && \
    install-php-extensions pdo_mysql gd zip xdebug sockets opcache

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN mkdir -p /var/log/supervisor
