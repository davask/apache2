#! /bin/bash

for conf in `find /etc/apache2/sites-available -type f -name "*.conf"`; do

    DWL_USER_DNS_CONF=${conf};

    DWL_USER_DNS_DATA=`echo ${DWL_USER_DNS_CONF} | awk -F '[/]' '{print $5}' | sed "s|\.conf||g"`;

    DWL_USER_DNS=`echo ${DWL_USER_DNS_DATA} | awk -F '[_]' '{print $2}'`;
    DWL_USER_DNS_PORT=`echo ${DWL_USER_DNS_DATA} | awk -F '[_]' '{print $3}'`;
    DWL_USER_DNS_SERVERNAME=`echo "${DWL_USER_DNS}" | awk -F '[\.]' '{print $(NF-1)"."$NF}'`;


    echo "> configure virtualhost for ${DWL_USER_DNS} with path ${DWL_USER_DNS_CONF}";

    echo "Update virtualhost for top domain + domain";

    . ${dwlDir}/virtualhost.sh "${DWL_USER_DNS}" "${DWL_USER_DNS_CONF}" "${DWL_USER_DNS_SERVERNAME}"

    a2ensite ${DWL_USER_DNS_DATA};

done;

if [ -d /home/${DWL_USER_NAME}/files ]; then
    rm -rdf ${DWL_HTTP_DOCUMENTROOT:-/var/www/html};
    ln -sf /home/${DWL_USER_NAME}/files ${DWL_HTTP_DOCUMENTROOT:-/var/www/html};
fi
service apache2 start;
DWL_KEEP_RUNNING=true;
