FROM php:8-cli

COPY ./web_project /app

RUN apt-get update && apt-get install -y \
    libpq-dev \
    libzip-dev \
    && docker-php-ext-install pdo pdo_pgsql zip

EXPOSE 80

CMD ["php", "-S", "0.0.0.0:80", "-t", "/app"]
