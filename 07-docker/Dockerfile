FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
RUN apt-get install -y php
RUN rm /var/www/html/index.html
COPY index.php /var/www/html/index.php
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]