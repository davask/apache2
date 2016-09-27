for conf in `find /etc/apache2/sites-available -type f -name "*.conf"`; do
    DWL_USER_DNS=`echo ${conf} | awk -F '[/]' '{print $5}' | sed "s|\.conf||g"`;
    a2ensite ${DWL_USER_DNS};
done;

if [ -d /home/${DWL_USER_NAME}/files ]; then
    rm -rdf /var/www/html;
    ln -sf /home/${DWL_USER_NAME}/files /var/www/html;
fi
chown -R ${DWL_USER_NAME} /etc/apache2/sites-available/*;

service apache2 start;
