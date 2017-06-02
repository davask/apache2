#/usr/bin/env bash

branch=${1};
parentBranch=${2};
rootDir=${3};
buildDir=${4};

##############
# Dockerfile #
##############

echo "FROM davask/d-base:${parentBranch}
MAINTAINER davask <docker@davaskweblimited.com>
USER root
LABEL dwl.server.http=\"apache ${branch}\"" > ${rootDir}/Dockerfile
echo '
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
RUN apt-get update
# Debian 8.8
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
RUN apt-get autoremove -y
RUN rm -rf /var/lib/apt/lists/*

# Configure apache
RUN a2enmod rewrite
RUN a2enmod expires
RUN a2enmod headers

COPY ./build/dwl/default/etc/apache2/apache2.conf /dwl/default/etc/apache2/apache2.conf
RUN cp -rdf /dwl/default/etc/apache2/apache2.conf /etc/apache2/apache2.conf
RUN a2enmod cgi

# proxy protection
RUN a2enmod remoteip

RUN a2dissite 000-default
RUN rm -f /etc/apache2/sites-available/000-default.conf
RUN a2dissite default-ssl
RUN rm -f /etc/apache2/sites-available/default-ssl.conf

# Configure apache virtualhost.conf
COPY ./build/dwl/default/etc/apache2/sites-available/0000_docker.davaskweblimited.com_80.conf.dwl /dwl/default/etc/apache2/sites-available/0000_docker.davaskweblimited.com_80.conf.dwl
COPY ./build/dwl/default/etc/apache2/sites-available/0000_allowoverride_0.conf /dwl/default/etc/apache2/sites-available/0000_allowoverride_0.conf
COPY ./build/dwl/shield/default/var/www/html/.htaccess /dwl/shield/default/var/www/html/.htaccess
EXPOSE 80
HEALTHCHECK --interval=5s --timeout=3s --retries=3 CMD curl -f http://localhost:80 || exit 1

WORKDIR /var/www/html

COPY ./build/dwl/default/var/www/html /dwl/default/var/www/html
RUN cp -rdf /dwl/default/var/www/html /var/www

COPY ./build/dwl/live /dwl/live

COPY ./build/dwl/activateconf.sh /dwl/activateconf.sh
COPY ./build/dwl/virtualhost.sh /dwl/virtualhost.sh
COPY ./build/dwl/apache2.sh /dwl/apache2.sh
COPY ./build/dwl/init.sh /dwl/init.sh
RUN chown root:sudo -R /dwl
USER admin
' >> ${rootDir}/Dockerfile

echo "Dockerfile generated with Apache:${branch}";
