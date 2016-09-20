FROM davask/d-base:u14.04
MAINTAINER davask <docker@davaskweblimited.com>
LABEL dwl.server.http="apache 2.4"

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
EXPOSE 443

COPY ./var/www/html /var/www/html
COPY ./etc/apache2/apache2.conf /etc/apache2/apache2.conf
COPY ./etc/apache2/sites-enabled/000-default.conf /etc/apache2/sites-enabled/000-default.conf
COPY ./tmp/dwl/init.sh /tmp/dwl/init.sh
