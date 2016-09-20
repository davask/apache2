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

RUN /bin/bash -c 'if [ -f /etc/apache2/sites-enabled/000-default.conf ]; then \
    a2dissite 000-default; \
fi;'
RUN /bin/bash -c 'if [ -f /etc/apache2/sites-available/000-default.conf ]; then \
    rm /etc/apache2/sites-available/000-default.conf; \
fi;'

EXPOSE 80

COPY ./var/www/html /var/www/html
COPY ./etc/apache2/sites-enabled/virtualhost.conf /etc/apache2/sites-enabled/virtualhost.conf
COPY ./etc/apache2/apache2.conf /etc/apache2/apache2.conf
COPY ./tmp/dwl/apache2.sh /tmp/dwl/apache2.sh
COPY ./tmp/dwl/init.sh /tmp/dwl/init.sh

ONBUILD RUN /bin/bash -c 'rm /etc/apache2/sites-enabled/virtualhost.conf'
