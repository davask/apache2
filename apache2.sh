#!/bin/bash
rm -rdf /var/www/html
ln -s ${DWL_USER_DIR}/${DWL_APP_DIR} /var/www/html
service apache2 start
echo "apache2 Initialized";
