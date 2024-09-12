FROM ubuntu 
RUN apt update && apt install apache2 -y
COPY . /var/www/html
CMD apache2 -g 'daemon off;'
