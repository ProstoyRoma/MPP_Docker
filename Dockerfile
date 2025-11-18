# Базовый образ
FROM ubuntu:22.04

# Установка необходимых пакетов
RUN apt-get update && apt-get install -y \
    nginx \
    mysql-server \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Настройка Nginx
COPY index.html /var/www/html/index.html

# Открываем порты
EXPOSE 80 3306

# Запуск служб при старте контейнера
CMD service mysql start && nginx -g "daemon off;"
