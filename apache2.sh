#!/bin/bash
chown -R ${DWL_USER_NAME}:${APACHE_RUN_GROUP} ${DWL_USER_DIR_TMP}
ln -s ${DWL_USER_DIR}/${DWL_APP_DIR} /var/www/html
service apache2 start
echo "apache2 Initialized";
