FROM php:8.1-fpm

RUN apt-get update

RUN apt-get install -y apt-utils
RUN apt-get install -y git
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y mcrypt
RUN apt-get install -y libfreetype6-dev
RUN apt-get install -y libjson-c-dev
RUN apt-get install -y libjpeg62-turbo-dev
RUN apt-get install -y libmcrypt-dev
RUN apt-get install -y libpq-dev
RUN apt-get install -y libssl-dev
RUN apt-get install -y libxml2-dev
RUN apt-get install -y cmake
RUN apt-get install -y python3.9
RUN apt-get install -y python3-pip
RUN apt-get install -y wget
RUN apt-get install -y libonig-dev

RUN docker-php-ext-install pdo_pgsql
RUN docker-php-ext-install mbstring

