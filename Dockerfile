FROM davask/d-ubuntu:14.04
MAINTAINER davask <contact@davaskweblimited.com>
USER root
LABEL dwl.server.http="apache 2.4"

# declare container type
ENV DWL_INIT server
# declare if by default we keep container running
ENV DWL_KEEP_RUNNING false
# declare apache environment
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_LOG_DIR $DWL_USER_HOME/log/apache2

# create apache2 directories
RUN /bin/bash -c 'mkdir -p $APACHE_RUN_DIR $APACHE_LOCK_DIR $APACHE_LOG_DIR'
# Update packages
RUN /bin/bash -c 'apt-get update'
RUN /bin/bash -c 'apt-get install -y apache2'
RUN /bin/bash -c 'apt-get install -y apache2-utils'
RUN /bin/bash -c 'apt-get install -y sendmail'
RUN /bin/bash -c 'rm -rf /var/lib/apt/lists/*'
# Configure apache
RUN /bin/bash -c 'a2enmod rewrite'
RUN /bin/bash -c 'a2enmod expires'
RUN /bin/bash -c 'a2enmod headers'
RUN /bin/bash -c 'a2enmod cgi'
# proxy protection
RUN /bin/bash -c 'a2enmod remoteip'

COPY ./var/www/html /var/www/html
COPY ./etc/apache2/sites-enabled /etc/apache2/sites-enabled
COPY ./tmp/dwl/init.sh /tmp/dwl/init.sh
