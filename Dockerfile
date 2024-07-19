FROM ubuntu:latest
RUN apt-get update && apt-get install apache2
RUN echo"ServerName localhost" >> /etc/apache2/apache2.conf
WORKDIR /var/www/html
COPY . .
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 8000