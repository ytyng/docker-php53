
FROM ubuntu:12.04

MAINTAINER hiromix

# set locale
RUN apt-get clean && apt-get update && apt-get install -y locales
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get update && apt-get install -y \
    software-properties-common
    apache2 \
    supervisor \
    less

RUN apt-get update && apt-get install -y \
    php5 \
    php5-mysql \
    php5-gd \
    php5-cli \
    php5-xdebug


# PHP
COPY php-extends.ini /tmp/php-extends.ini
RUN cat /tmp/php-extends.ini >> /etc/php5/apache2/php.ini

# Apache2
RUN mkdir /var/run/apache2
RUN a2enmod php5 rewrite headers proxy ssl
# RUN mkdir /etc/apache2/certs
# COPY certs/ /etc/apache2/certs/
COPY site-php53.conf /etc/apache2/sites-available/site-php53
RUN a2dissite 000-default
RUN a2ensite site-php53


# supervisor
COPY supervisor.conf /etc/supervisor/conf.d/

EXPOSE 80 443

CMD ["/usr/bin/supervisord"]
