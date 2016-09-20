if [ -d ${DWL_USER_HOME}/files ]; then
    rm -rdf /var/www/html;
    ln -sf ${DWL_USER_HOME}/files /var/www/html;
fi
service apache2 start;
