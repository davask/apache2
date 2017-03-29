#/usr/bin/env bash

branch=${1};
parentBranch=${2};
rootDir=${3};
buildDir=${4};

#############
# README.md #
#############

echo "# dockerfile

see [FROM IMAGE README.md](https://github.com/davask/d-base)

## Open port
- 80

### Apache2 activation

#### comment

- automatic configuration are handle for filename as [0-9]{4}\-subdomain\.domain\.tld\-[0-9]{2,3}\.conf\.dwl

- On start all *.conf in /etc/apache2/sites-available are enabled

## virtualhost automatic conf

> # ServerAdmin

> # DocumentRoot

> # ServerName

> # ServerAlias

## LABEL

> dwl.server.http=\"apache ${branch}\"

" > ${rootDir}/README.md

echo "README.md generated with Apache:${branch}";
