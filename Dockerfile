FROM nginx:alpine

# Удаляем дефолтные html из nginx
RUN rm -rf /usr/share/nginx/html/*

# Копируем твои файлы в папку nginx
COPY . /usr/share/nginx/html

# Контейнер слушает порт 80
EXPOSE 80
