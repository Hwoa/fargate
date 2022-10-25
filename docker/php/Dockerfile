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

RUN EXPECTED_SIGNATURE="$(wget -q -O - https://composer.github.io/installer.sig)"
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN ACTUAL_SIGNATURE="$(php -r "echo hash_file('sha384', 'composer-setup.php');")"
RUN if [ "$EXPECTED_SIGNATURE" != "$ACTUAL_SIGNATURE" ]; \
    then \
        >&2 echo 'ERROR: Invalid installer signature'; \
        rm composer-setup.php; \
        exit 1; \
    fi;

RUN php composer-setup.php --quiet
RUN RESULT=$?

RUN mv composer.phar /usr/local/bin/composer
RUN rm composer-setup.php
RUN exit $RESULT

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV PATH $PATH:/composer/vendor/bin
