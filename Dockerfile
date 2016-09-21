FROM davask/d-base:u14.04
MAINTAINER davask <docker@davaskweblimited.com>
LABEL dwl.server.http="apache 2.4"

# Apache conf
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/web/log/apache2
ENV APACHE_RUN_DIR=/var/run/apache2
ENV DWL_USER_DNS docker.davaskweblimited.com

# Update packages
RUN /bin/bash -c 'apt-get update'
RUN /bin/bash -c 'apt-get install -y apache2'
RUN /bin/bash -c 'apt-get install -y apache2-utils'
RUN /bin/bash -c 'rm -rf /var/lib/apt/lists/*'

# Configure apache
RUN /bin/bash -c 'a2enmod rewrite'
RUN /bin/bash -c 'a2enmod expires'
RUN /bin/bash -c 'a2enmod headers'
RUN /bin/bash -c 'a2enmod cgi'
# proxy protection
RUN /bin/bash -c 'a2enmod remoteip'

RUN /bin/bash -c 'rm -f /etc/apache2/sites-enabled/000-default.conf &>> null'
RUN /bin/bash -c 'rm -f /etc/apache2/sites-available/000-default.conf &>> null'

# Configure apache virtualhost.conf
COPY ./tmp/dwl/virtualhost.conf /tmp/dwl/virtualhost.conf
RUN /bin/bash -c 'cp -rdf /tmp/dwl/virtualhost.conf /etc/apache2/sites-available/${DWL_USER_DNS}.conf'

EXPOSE 80

COPY ./var/www/html /var/www/html
COPY ./etc/apache2/apache2.conf /etc/apache2/apache2.conf
COPY ./tmp/dwl/apache2.sh /tmp/dwl/apache2.sh
COPY ./tmp/dwl/init.sh /tmp/dwl/init.sh
