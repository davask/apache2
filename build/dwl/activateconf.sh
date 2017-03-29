#! /bin/bash

if [ -f /dwl/live/backup.list ]; then
    rm /dwl/live/backup.list;
fi
rm -rdf /dwl/live/conf/*;

touch /dwl/live/backup.list;

for conf in `find /dwl/live/backup -type f -name "*\.conf\.dwl"`; do

    DWL_USER_DNS_DATA=`echo ${conf} | awk -F '[/]' '{print $5}' | sed "s|\.conf\.dwl||g"`;

    if [ ! -f "/etc/apache2/sites-available/${DWL_USER_DNS_DATA}.conf.dwl" ]; then

        echo ${DWL_USER_DNS_DATA} >> /dwl/live/backup.list;

    else

        rm -rdf ${conf};

    fi

done;

for conf in `find /etc/apache2/sites-available -type f -name "*\.conf\.dwl"`; do

    DWL_USER_DNS_DATA=`echo ${conf} | awk -F '[/]' '{print $5}' | sed "s|\.conf\.dwl||g"`;

    echo ${DWL_USER_DNS_DATA} >> /dwl/live/backup.list;

    mv -f ${conf} /dwl/live/backup;

done;

for DWL_USER_DNS_DATA in `cat /dwl/live/backup.list`; do

    if [ ! -f "/etc/apache2/sites-available/${DWL_USER_DNS_DATA}.conf" ]; then
        cp -rdf /dwl/live/backup/${DWL_USER_DNS_DATA}.conf.dwl /etc/apache2/sites-available/${DWL_USER_DNS_DATA}.conf;
    fi

done;

for conf in `find /dwl/default/etc/apache2/sites-available -type f -name "*\.conf"`; do

    cp -rdf ${conf} /dwl/live/conf;

done;

for conf in `find /dwl/live/conf -type f -name "*\.conf"`; do

    DWL_USER_DNS_DATA=`echo ${conf} | awk -F '[/]' '{print $5}' | sed "s|\.conf||g"`;

    if [ ! -f "/etc/apache2/sites-available/${DWL_USER_DNS_DATA}.conf" ]; then
        echo "DNS Activated: ${DWL_USER_DNS_DATA}.conf";
        cp -rdf ${conf} /etc/apache2/sites-available/${DWL_USER_DNS_DATA}.conf;
    else
        echo "DNS Unchanged: ${DWL_USER_DNS_DATA}.conf";
    fi

done;
