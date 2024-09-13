FROM ubuntu
EXPOSE 80
WORKDIR /app
RUN apt update && apt install apache2 -y
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
COPY . /var/www/html
CMD ["apache2", "-g", "daemon off;"]
