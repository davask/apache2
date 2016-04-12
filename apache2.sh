#!/bin/bash
chown -R ${DWL_USER_NAME}:${APACHE_RUN_GROUP} ${DWL_USER_DIR_TMP}
service apache2 start
echo "apache2 Initialized";
