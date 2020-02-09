FROM nginx:latest
RUN sed -i 's/nginx/jerome/g' /usr/share/nginx/html/index.html
EXPOSE 80
