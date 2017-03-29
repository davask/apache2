#! /bin/bash

DWL_USER_DNS=${1};
DWL_USER_DNS_CONF=${2};
DWL_USER_DNS_SERVERNAME=${3};

sed -i "s|# ServerAdmin|ServerAdmin ${DWL_HTTP_SERVERADMIN:-contact@$DWL_USER_DNS_SERVERNAME}|g" ${DWL_USER_DNS_CONF};

sed -i "s|# DocumentRoot|DocumentRoot ${DWL_HTTP_DOCUMENTROOT:-/var/www/html}|g" ${DWL_USER_DNS_CONF};

if [ "${DWL_USER_DNS_SERVERNAME}" != "${DWL_USER_DNS}" ]; then

    echo "Handle virtualhost/ssl for top domain + domain";

    sed -i "s|# ServerName|ServerName ${DWL_USER_DNS_SERVERNAME}|g" ${DWL_USER_DNS_CONF};

    sed -i "s|# ServerAlias|ServerAlias ${DWL_USER_DNS}|g" ${DWL_USER_DNS_CONF};

else

    echo "Handle virtualhost/ssl for domain";

    sed -i "s|# ServerName|ServerName ${DWL_USER_DNS}|g" ${DWL_USER_DNS_CONF};

    sed -i "s|# ServerAlias||g" ${DWL_USER_DNS_CONF};

fi
