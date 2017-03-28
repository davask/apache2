i=0;
for conf in `find /etc/apache2/sites-available -type f -name "*\.conf\.dwl"`; do
    DWL_USER_DNS=`echo ${conf} | awk -F '[/]' '{print $5}' | sed "s|\.conf\.dwl||g"`;
    DWL_DNS_TOPROCESS[${i}]=${DWL_USER_DNS};
    mv -f ${conf} /etc/apache2/sites-available/${DWL_USER_DNS}.conf
    i=$(($i + 1));
done;
for DWL_USER_DNS in `echo ${DWL_DNS_TOPROCESS[*]}`; do echo "DNS Activated: ${DWL_USER_DNS}"; done;
