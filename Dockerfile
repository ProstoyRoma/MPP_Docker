# Базовый образ
FROM nginx:alpine

# Копируем наш index.html в папку nginx
COPY index.html /usr/share/nginx/html/index.html

# Открываем порт 80
EXPOSE 80

# Nginx автоматически запускается при старте контейнера
