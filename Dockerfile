FROM davask/d-base:u14.04
MAINTAINER davask <docker@davaskweblimited.com>
USER root
LABEL dwl.server.http="apache 2.4-u14.04"

# Apache conf
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_RUN_DIR /var/run/apache2

ENV DWL_HTTP_SERVERADMIN contact@davaskweblimited.com
ENV DWL_HTTP_DOCUMENTROOT /var/www/html
ENV DWL_HTTP_SHIELD false

# Update packages
RUN apt-get update && \
apt-get install -y apache2 apache2-utils
RUN apt-get upgrade -y && \
apt-get autoremove -y && \
apt-get clean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Configure apache
RUN a2enmod \
rewrite \
expires \
headers

COPY ./build/dwl/default/etc/apache2/apache2.conf /dwl/default/etc/apache2/apache2.conf
RUN cp -rdf /dwl/default/etc/apache2/apache2.conf /etc/apache2/apache2.conf
RUN a2enmod cgi

# proxy protection
RUN a2enmod remoteip

RUN a2dissite 000-default && rm -f /etc/apache2/sites-available/000-default.conf
RUN a2dissite default-ssl && rm -f /etc/apache2/sites-available/default-ssl.conf

# Configure apache virtualhost.conf
COPY ./build/dwl/default/etc/apache2/sites-available /dwl/default/etc/apache2/
COPY ./build/dwl/shield/default/var/www/html/.htaccess /dwl/shield/default/var/www/html/.htaccess

EXPOSE 80

HEALTHCHECK --interval=5m --timeout=3s \
CMD curl -f http://localhost/ || exit 1

COPY ./build/dwl/default/var/www/html /dwl/default/var/www/html
RUN rm -rdf /var/www/html && cp -rdf /dwl/default/var/www/html /var/www

WORKDIR /var/www/html

COPY ./build/dwl/live ./build/dwl/activateconf.sh ./build/dwl/virtualhost.sh ./build/dwl/apache2.sh ./build/dwl/init.sh /dwl/
RUN chmod +x /dwl/init.sh && chown root:sudo -R /dwl
USER admin
