#!/bin/bash
echo "> disable all sites-enabled";
find /etc/apache2/sites-enabled/ -type l -exec rm -i "{}" \;

echo "> enabling all sites-available";
for site in `ls /etc/apache2/sites-available`;
do
    echo ">> Initialization of /etc/apache2/sites-available/`echo ${site} | sed 's/\.conf$//'`";
    a2ensite `echo ${site} | sed 's/\.conf$//'`;
done;

service apache2 start
echo "apache2 Initialized";
