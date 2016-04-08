FROM davask/d-ubuntu:14.04
MAINTAINER davask <contact@davaskweblimited.com>

LABEL dwl.server.http="apache2"

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt-get install -y apache2

RUN rm -rf /var/lib/apt/lists/*

RUN echo "ServerName localhost" | tee /etc/apache2/conf-available/fqdn.conf && a2enconf fqdn

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2

RUN mkdir -p $APACHE_RUN_DIR $APACHE_LOCK_DIR $APACHE_LOG_DIR

RUN chown -R $APACHE_RUN_USER:$APACHE_RUN_GROUP /tmp/uploads

# Configure apache
RUN a2enmod rewrite
RUN a2enmod expires
RUN a2enmod headers
RUN a2enmod cgi

USER $APACHE_RUN_USER

VOLUME /etc/apache2/sites-enabled

EXPOSE 80

COPY ./dwl-init-1-apache2.sh /tmp/dwl-init-1-apache2.sh
