#! /bin/bash

# declare user
if [ "`grep ${DWL_USER_NAME} /etc/passwd | wc -l`" = 0 ]; then
    echo "> Declare user ${DWL_USER_NAME}";
    # declare home user
    DWL_USER_HOME=/home/${DWL_USER_NAME};
    # declare group user
    groupadd -r ${DWL_USER_NAME};
    # declare group user
    useradd -m -r \
        -g ${DWL_USER_NAME} \
        -G ${DWL_ADMIN_GROUP} \
        -d ${DWL_USER_HOME} \
        -s /bin/bash \
        -c "dwl ssh user" \
        -p $(echo "${DWL_USER_PASSWD}" | openssl passwd -1 -stdin) \
        ${DWL_USER_NAME};
    chown -R ${DWL_USER_NAME}:${DWL_USER_NAME} -R ${DWL_USER_HOME};
fi

if [ "${DWL_SSH_ACCESS}" = "true" ]; then
    DWL_KEEP_RUNNING=true;
    echo "> Start Ssh";
    service ssh start;
fi
echo ">> Ubuntu initialized";

echo ">> Base initialized";

for site2dis in `find /etc/apache2/sites-enabled -type f -name "*.conf" | awk -F'[/]' '{print $5}' | awk -F'[\.]' '{print $1}'`; do
    a2dissite ${site2dis};
done;
for site2en in `find /etc/apache2/sites-available -type f -name "*.conf" | awk -F'[/]' '{print $5}' | awk -F'[\.]' '{print $1}'`; do
    a2ensite ${site2en};
done;

if [ -d ${DWL_USER_HOME}/files ]; then
    rm -rdf /var/www/html;
    ln -sf ${DWL_USER_HOME}/files /var/www/html;
fi
service apache2 start;

echo ">> apache2 initialized";

if [ "${DWL_KEEP_RUNNING}" = "true" ]; then
    echo "> Kept container active";
    tail -f /dev/null;
fi
