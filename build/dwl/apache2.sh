#! /bin/bash

if [ "$DWL_SHIELD_HTTP" == "true" ]; then
    DWL_APACHE2_SHIELD="/dwl/shield/apache2";
    if [ ! -d $DWL_APACHE2_SHIELD ]; then
        mkdir -p $DWL_APACHE2_SHIELD;
    fi
    htpasswd -b -c $DWL_SHIELD $DWL_USER_NAME $DWL_USER_PASSWD;
    if [ ! -f /etc/apache2/sites-available/0000_shield-http_0.conf ]; then
        cp /dwl/default/etc/apache2/sites-available/0000_shield-http_0.conf /etc/apache2/sites-available;
    fi
fi

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

for conf in `find /etc/apache2/sites-available -type f -name "*.conf"`; do
if [ -d /home/${DWL_USER_NAME}/files ]; then
    rm -rdf ${DWL_HTTP_DOCUMENTROOT:-/var/www/html};
    ln -sf /home/${DWL_USER_NAME}/files ${DWL_HTTP_DOCUMENTROOT:-/var/www/html};
fi
service apache2 start;
DWL_KEEP_RUNNING=true;
