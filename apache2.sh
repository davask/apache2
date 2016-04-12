#!/bin/bash
# declare extra apache log dir
dwl_func_mkdir ${DWL_USER_DIR}/log apache2

service apache2 start
echo "apache2 Initialized";
