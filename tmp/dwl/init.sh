#! /bin/bash

if [ "${DWL_INIT}" != "data" ]; then
    DWL_KEEP_RUNNING=true
    echo ">> Ssh started";
    service ssh start;
    echo ">> Sendmail started";
    service sendmail start;
    echo ">> Apache2 started";
    service apache2 start;
fi
echo "Ubuntu initialized";

if [ "${DWL_KEEP_RUNNING}" = "true" ]; then
    echo "> KEEP RUNNING ACTIVE";
    tail -f /dev/null;
fi
