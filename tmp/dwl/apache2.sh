for conf in `find /etc/apache2/sites-available -type f -name "*.conf"`; do
    DWL_USER_DNS=`echo ${conf} | awk -F '[/]' '{print $5}' | sed "s|\.conf||g"`;
    a2ensite ${DWL_USER_DNS};
done;

if [ -d ${DWL_USER_HOME}/files ]; then
    rm -rdf /var/www/html;
    ln -sf ${DWL_USER_HOME}/files /var/www/html;
fi
service apache2 start;
