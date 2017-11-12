FROM php:7.1.11-fpm

RUN apt-get update
RUN apt-get install -y libmcrypt-dev

RUN docker-php-ext-install mcrypt mbstring

# mysql TODO
# RUN apt-get install mysql-client

# sqlite
RUN apt-get install sqlite3 libsqlite3-dev
RUN docker-php-ext-install pdo_sqlite
