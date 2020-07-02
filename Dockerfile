FROM php:7.4.7-fpm-alpine3.12
RUN apk add bash mysql-client composer
RUN docker-php-ext-install pdo pdo_mysql


WORKDIR /var/www
RUN rm -rf /var/www/html

# RUN composer install && \
#             cp .env.example .env && \
#             php artisan key:generate && \
#             php artisan config:cache

# COPY . /var/www
RUN ln -s public html

EXPOSE 9000
ENTRYPOINT ["php-fpm"]

