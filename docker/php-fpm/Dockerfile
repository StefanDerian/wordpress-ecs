FROM --platform=linux/amd64 php:8.2-fpm

RUN apt-get update && apt-get install -y \
    libmariadb-dev \
    libzip-dev \
    zip \
    unzip \
    curl \
    less \
    sudo \
    && docker-php-ext-install mysqli pdo_mysql

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp
# Copy source code to /var/www/html
WORKDIR /var/www/html/wordpress

EXPOSE 9000

CMD php-fpm -F -R;