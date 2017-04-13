#/usr/bin/env bash

branch=${1};
parentBranch=${2};
rootDir=${3};
buildDir=${4};

######################
# docker-compose.yml #
######################

echo "d-apache:
  ports:
  - 65500:80/tcp
  - 65502:22/tcp
  environment:
    DWL_LOCAL: en_US.UTF-8
    DWL_USER_ID: '1000'
    DWL_USER_PASSWD: secret
    DWL_LOCAL_LANG: en_US:en
    DWL_USER_NAME: username
    DWL_SSH_ACCESS: 'true'
    DWL_SHIELD_HTTP: 'false'
  log_driver: syslog
  labels:
    io.rancher.scheduler.affinity:host_label: dwl=dwlComPrivate
  image: davask/d-apache:${branch}
  hostname: private.davaskweblimited.com
  volumes:
  - ${rootDir}/volumes/home/username/files:/home/username/files
  - ${rootDir}/volumes/home/username/http/app/sites-available:/etc/apache2/sites-available
  working_dir: /var/www/html
" > ${rootDir}/docker-compose.yml

echo "docker-compose.yml generated with apache:${branch}";