DWL_AVAILABLE_SITE=`find /etc/apache2/sites-available/ -type f`;
if [ `echo ${DWL_AVAILABLE_SITE} | wc -l` > 0 ]; then
    for conf in ${DWL_AVAILABLE_SITE}; do
        conf=${conf/\/etc\/apache2\/sites-available\//};
        a2ensite ${conf/\.conf/};
    done;
fi

if [ -d ${DWL_USER_HOME}/files ]; then
    rm -rdf /var/www/html;
    ln -sf ${DWL_USER_HOME}/files /var/www/html;
fi
service apache2 start;
