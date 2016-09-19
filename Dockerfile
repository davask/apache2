FROM davask/d-ubuntu:16.04
MAINTAINER davask <contact@davaskweblimited.com>
LABEL dwl.server.http="apache 2.4"

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive
# declare if by default we keep container running
ENV DWL_KEEP_RUNNING false

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

EXPOSE 80

COPY ./var/www/html /var/www/html
COPY ./etc/apache2/sites-enabled /etc/apache2/sites-enabled
COPY ./tmp/dwl/init.sh /tmp/dwl/init.sh
