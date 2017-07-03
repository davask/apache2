# dockerfile

## Exposed port

- 22
- 80
## Default ENV values

- DWL_LOCAL_LANG: 'en_US:en'
- DWL_LOCAL: 'en_US.UTF-8'
- DWL_USER_NAME: 'username'
- DWL_SSH_ACCESS: 'false'
- DWL_USER_ID: '1000'
- DWL_USER_PASSWD: 'secret'
- APACHE_LOCK_DIR: '/var/lock/apache2'
- APACHE_PID_FILE: '/var/run/apache2.pid'
- APACHE_RUN_USER: 'www-data'
- APACHE_RUN_GROUP: 'www-data'
- APACHE_LOG_DIR: '/var/log/apache2'
- APACHE_RUN_DIR: '/var/run/apache2'
- DWL_HTTP_SERVERADMIN: 'admin@localhost'
- DWL_HTTP_DOCUMENTROOT: '/var/www/html'
- DWL_HTTP_SHIELD: 'false'
## Available volumes

- /home/username
- /var/log/apache2
- /etc/apache2/sites-available
## LABEL

- dwl.server.os="base 2.4-u14.04"

- dwl.server.base="apache 2.4-u14.04"

- dwl.server.http="apache 2.4-u14.04"

## EXTRA

#### comment

- automatic configuration are handle for filename as [0-9]{4}\-subdomain\.domain\.tld\-[0-9]{2,3}\.conf\.dwl
- On start all *.conf in /etc/apache2/sites-available are enabled

## virtualhost automatic conf



#### comment

- automatic configuration are handle for filename as [0-9]{4}\-subdomain\.domain\.tld\-[0-9]{2,3}\.conf\.dwl
- On start all *.conf in /etc/apache2/sites-available are enabled

## virtualhost automatic conf

[1mBuilding a2.4-u14.04, allbranches with push for git and  cache, nopush for docker
Processing:
- [false] Ubuntu
- [false] Debian
- [true] Apache
- [false] Php
- [false] WordPress
- [false] Symfony
- [false] ECSyMMS
[0m
Conf for a2.4-u14.04
Ubuntu    : 14.04
Debian    : Null
Apache    : 2.4
PHP       : Null
WordPress : Null
Symfony   : Null
ECSyMMS   : Null
6 Env to process :
- davask/d-apache:2.4-u14.04
- davask/d-apache-openssl:2.4-u14.04
- davask/d-apache-letsencrypt:2.4-u14.04
- davask/d-apache-proxy-reverse:2.4-u14.04
- davask/d-apache-openssl-proxy-reverse:2.4-u14.04
- davask/d-apache-letsencrypt-proxy-reverse:2.4-u14.04

##############################
#    PROCESS DOCKERFILE      #
##############################


#### PROCESS ALL IMAGES ######

[32mhttp/d-apache[0m
Reinit /home/dwl/docker-images/http/d-apache
add src from /home/dwl/docker-images/src/http/d-apache
build
volumes
init.sh generated with apache:2.4-u14.04
Dockerfile generated with apache:2.4-u14.04
README.md generated with apache:2.4-u14.04
docker-compose.yml generated with apache:2.4-u14.04
portainer-template generated with apache:2.4-u14.04
[32mhttp/d-apache-openssl[0m
Reinit /home/dwl/docker-images/http/d-apache-openssl
add src from /home/dwl/docker-images/src/http/d-apache-openssl
build
init.sh generated with apache-openssl:2.4-u14.04
Dockerfile generated with apache-openssl:2.4-u14.04
README.md generated with apache-openssl:2.4-u14.04
docker-compose.yml generated with apache-openssl:2.4-u14.04
portainer-template generated with apache-openssl:2.4-u14.04
[32mhttp/d-apache-letsencrypt[0m
Reinit /home/dwl/docker-images/http/d-apache-letsencrypt
add src from /home/dwl/docker-images/src/http/d-apache-letsencrypt
build
init.sh generated with apache-letsencrypt:2.4-u14.04
Dockerfile generated with apache-letsencrypt:2.4-u14.04
README.md generated with apache-letsencrypt:2.4-u14.04
docker-compose.yml generated with apache-letsencrypt:2.4-u14.04
portainer-template generated with apache-letsencrypt:2.4-u14.04
[32mproxy/d-apache-proxy-reverse[0m
Reinit /home/dwl/docker-images/proxy/d-apache-proxy-reverse
add src from /home/dwl/docker-images/src/proxy/d-proxy
build
no init.sh generation required with apache-proxy-reverse:2.4-u14.04
Dockerfile generated with apache-proxy-reverse:2.4-u14.04
README.md generated with apache-proxy-reverse:2.4-u14.04
docker-compose.yml generated with apache-proxy-reverse:2.4-u14.04
portainer-template generated with apache-proxy-reverse:2.4-u14.04
[32mproxy/d-apache-openssl-proxy-reverse[0m
Reinit /home/dwl/docker-images/proxy/d-apache-openssl-proxy-reverse
add src from /home/dwl/docker-images/src/proxy/d-proxy
build
no init.sh generation required with apache-openssl-proxy-reverse:2.4-u14.04
Dockerfile generated with apache-openssl-proxy-reverse:2.4-u14.04
README.md generated with apache-openssl-proxy-reverse:2.4-u14.04
docker-compose.yml generated with apache-openssl-proxy-reverse:2.4-u14.04
portainer-template generated with apache-openssl-proxy-reverse:2.4-u14.04
[32mproxy/d-apache-letsencrypt-proxy-reverse[0m
Reinit /home/dwl/docker-images/proxy/d-apache-letsencrypt-proxy-reverse
add src from /home/dwl/docker-images/src/proxy/d-proxy
build
no init.sh generation required with apache-letsencrypt-proxy-reverse:2.4-u14.04
Dockerfile generated with apache-letsencrypt-proxy-reverse:2.4-u14.04
README.md generated with apache-letsencrypt-proxy-reverse:2.4-u14.04
docker-compose.yml generated with apache-letsencrypt-proxy-reverse:2.4-u14.04
portainer-template generated with apache-letsencrypt-proxy-reverse:2.4-u14.04

##############################
#      PROCESS GITHUB        #
##############################


#### PROCESS ALL IMAGES ######

#### http/d-apache ######

2.4-u14.04
[32m/home/dwl/docker-images/http/d-apache[0m
Branch davask/d-apache:2.4-u14.04 is current
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   Dockerfile
	modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")
[2.4-u14.04 4b3c104] Automatic update 2.4-u14.04
 2 files changed, 8 insertions(+), 5 deletions(-)
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean

[32m/home/dwl/docker-images[0m
#### http/d-apache-openssl ######

2.4-u14.04
[32m/home/dwl/docker-images/http/d-apache-openssl[0m
Branch davask/d-apache-openssl:2.4-u14.04 is current
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   Dockerfile
	modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")
[2.4-u14.04 0b09ff8] Automatic update 2.4-u14.04
 2 files changed, 4 insertions(+), 6 deletions(-)
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean

[32m/home/dwl/docker-images[0m
#### http/d-apache-letsencrypt ######

2.4-u14.04
[32m/home/dwl/docker-images/http/d-apache-letsencrypt[0m
Branch davask/d-apache-letsencrypt:2.4-u14.04 is current
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")
[2.4-u14.04 d2fecbb] Automatic update 2.4-u14.04
 1 file changed, 2 insertions(+), 4 deletions(-)

[1mBuilding a2.4-u14.04, allbranches with push for git and  cache, nopush for docker
Processing:
- [false] Ubuntu
- [false] Debian
- [true] Apache
- [false] Php
- [false] WordPress
- [false] Symfony
- [false] ECSyMMS
[0m
Conf for a2.4-u14.04
Ubuntu    : 14.04
Debian    : Null
Apache    : 2.4
PHP       : Null
WordPress : Null
Symfony   : Null
ECSyMMS   : Null
6 Env to process :
- davask/d-apache:2.4-u14.04
- davask/d-apache-openssl:2.4-u14.04
- davask/d-apache-letsencrypt:2.4-u14.04
- davask/d-apache-proxy-reverse:2.4-u14.04
- davask/d-apache-openssl-proxy-reverse:2.4-u14.04
- davask/d-apache-letsencrypt-proxy-reverse:2.4-u14.04

##############################
#    PROCESS DOCKERFILE      #
##############################


#### PROCESS ALL IMAGES ######

[32mhttp/d-apache[0m
Reinit /home/dwl/docker-images/http/d-apache
add src from /home/dwl/docker-images/src/http/d-apache
build
volumes
init.sh generated with apache:2.4-u14.04
Dockerfile generated with apache:2.4-u14.04
README.md generated with apache:2.4-u14.04
docker-compose.yml generated with apache:2.4-u14.04
portainer-template generated with apache:2.4-u14.04
[32mhttp/d-apache-openssl[0m
Reinit /home/dwl/docker-images/http/d-apache-openssl
add src from /home/dwl/docker-images/src/http/d-apache-openssl
build
init.sh generated with apache-openssl:2.4-u14.04
Dockerfile generated with apache-openssl:2.4-u14.04
README.md generated with apache-openssl:2.4-u14.04
docker-compose.yml generated with apache-openssl:2.4-u14.04
portainer-template generated with apache-openssl:2.4-u14.04
[32mhttp/d-apache-letsencrypt[0m
Reinit /home/dwl/docker-images/http/d-apache-letsencrypt
add src from /home/dwl/docker-images/src/http/d-apache-letsencrypt
build
init.sh generated with apache-letsencrypt:2.4-u14.04
Dockerfile generated with apache-letsencrypt:2.4-u14.04
README.md generated with apache-letsencrypt:2.4-u14.04
docker-compose.yml generated with apache-letsencrypt:2.4-u14.04
portainer-template generated with apache-letsencrypt:2.4-u14.04
[32mproxy/d-apache-proxy-reverse[0m
Reinit /home/dwl/docker-images/proxy/d-apache-proxy-reverse
add src from /home/dwl/docker-images/src/proxy/d-proxy
build
no init.sh generation required with apache-proxy-reverse:2.4-u14.04
Dockerfile generated with apache-proxy-reverse:2.4-u14.04
README.md generated with apache-proxy-reverse:2.4-u14.04
docker-compose.yml generated with apache-proxy-reverse:2.4-u14.04
portainer-template generated with apache-proxy-reverse:2.4-u14.04
[32mproxy/d-apache-openssl-proxy-reverse[0m
Reinit /home/dwl/docker-images/proxy/d-apache-openssl-proxy-reverse
add src from /home/dwl/docker-images/src/proxy/d-proxy
build
no init.sh generation required with apache-openssl-proxy-reverse:2.4-u14.04
Dockerfile generated with apache-openssl-proxy-reverse:2.4-u14.04
README.md generated with apache-openssl-proxy-reverse:2.4-u14.04
docker-compose.yml generated with apache-openssl-proxy-reverse:2.4-u14.04
portainer-template generated with apache-openssl-proxy-reverse:2.4-u14.04
[32mproxy/d-apache-letsencrypt-proxy-reverse[0m
Reinit /home/dwl/docker-images/proxy/d-apache-letsencrypt-proxy-reverse
add src from /home/dwl/docker-images/src/proxy/d-proxy
build
no init.sh generation required with apache-letsencrypt-proxy-reverse:2.4-u14.04
Dockerfile generated with apache-letsencrypt-proxy-reverse:2.4-u14.04
README.md generated with apache-letsencrypt-proxy-reverse:2.4-u14.04
docker-compose.yml generated with apache-letsencrypt-proxy-reverse:2.4-u14.04
portainer-template generated with apache-letsencrypt-proxy-reverse:2.4-u14.04

##############################
#      PROCESS GITHUB        #
##############################


#### PROCESS ALL IMAGES ######

#### http/d-apache ######

2.4-u14.04
[32m/home/dwl/docker-images/http/d-apache[0m
Branch davask/d-apache:2.4-u14.04 is current
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean

[32m/home/dwl/docker-images[0m
#### http/d-apache-openssl ######

2.4-u14.04
[32m/home/dwl/docker-images/http/d-apache-openssl[0m
Branch davask/d-apache-openssl:2.4-u14.04 is current
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean

[32m/home/dwl/docker-images[0m
#### http/d-apache-letsencrypt ######

2.4-u14.04
[32m/home/dwl/docker-images/http/d-apache-letsencrypt[0m
Branch davask/d-apache-letsencrypt:2.4-u14.04 is current
On branch 2.4-u14.04
Your branch is ahead of 'origin/2.4-u14.04' by 1 commit.
  (use "git push" to publish your local commits)
nothing to commit, working directory clean
On branch 2.4-u14.04
Your branch is ahead of 'origin/2.4-u14.04' by 1 commit.
  (use "git push" to publish your local commits)
nothing to commit, working directory clean
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean

[32m/home/dwl/docker-images[0m
#### proxy/d-apache-proxy-reverse ######

2.4-u14.04
[32m/home/dwl/docker-images/proxy/d-apache-proxy-reverse[0m
Branch davask/d-apache-proxy-reverse:2.4-u14.04 is current
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")
[2.4-u14.04 6ba2c76] Automatic update 2.4-u14.04
 1 file changed, 1 insertion(+)

[1mBuilding a2.4-u14.04, allbranches with push for git and  build, nopush for docker
Processing:
- [false] Ubuntu
- [false] Debian
- [true] Apache
- [false] Php
- [false] WordPress
- [false] Symfony
- [false] ECSyMMS
[0m
Conf for a2.4-u14.04
Ubuntu    : 14.04
Debian    : Null
Apache    : 2.4
PHP       : Null
WordPress : Null
Symfony   : Null
ECSyMMS   : Null
6 Env to process :
- davask/d-apache:2.4-u14.04
- davask/d-apache-openssl:2.4-u14.04
- davask/d-apache-letsencrypt:2.4-u14.04
- davask/d-apache-proxy-reverse:2.4-u14.04
- davask/d-apache-openssl-proxy-reverse:2.4-u14.04
- davask/d-apache-letsencrypt-proxy-reverse:2.4-u14.04

##############################
#    PROCESS DOCKERFILE      #
##############################


#### PROCESS ALL IMAGES ######

[32mhttp/d-apache[0m
Reinit /home/dwl/docker-images/http/d-apache
add src from /home/dwl/docker-images/src/http/d-apache
build
volumes
init.sh generated with apache:2.4-u14.04
Dockerfile generated with apache:2.4-u14.04
README.md generated with apache:2.4-u14.04
docker-compose.yml generated with apache:2.4-u14.04
portainer-template generated with apache:2.4-u14.04
[32mhttp/d-apache-openssl[0m
Reinit /home/dwl/docker-images/http/d-apache-openssl
add src from /home/dwl/docker-images/src/http/d-apache-openssl
build
init.sh generated with apache-openssl:2.4-u14.04
Dockerfile generated with apache-openssl:2.4-u14.04
README.md generated with apache-openssl:2.4-u14.04
docker-compose.yml generated with apache-openssl:2.4-u14.04
portainer-template generated with apache-openssl:2.4-u14.04
[32mhttp/d-apache-letsencrypt[0m
Reinit /home/dwl/docker-images/http/d-apache-letsencrypt
add src from /home/dwl/docker-images/src/http/d-apache-letsencrypt
build
init.sh generated with apache-letsencrypt:2.4-u14.04
Dockerfile generated with apache-letsencrypt:2.4-u14.04
README.md generated with apache-letsencrypt:2.4-u14.04
docker-compose.yml generated with apache-letsencrypt:2.4-u14.04
portainer-template generated with apache-letsencrypt:2.4-u14.04
[32mproxy/d-apache-proxy-reverse[0m
Reinit /home/dwl/docker-images/proxy/d-apache-proxy-reverse
add src from /home/dwl/docker-images/src/proxy/d-proxy
build
no init.sh generation required with apache-proxy-reverse:2.4-u14.04
Dockerfile generated with apache-proxy-reverse:2.4-u14.04
README.md generated with apache-proxy-reverse:2.4-u14.04
docker-compose.yml generated with apache-proxy-reverse:2.4-u14.04
portainer-template generated with apache-proxy-reverse:2.4-u14.04
[32mproxy/d-apache-openssl-proxy-reverse[0m
Reinit /home/dwl/docker-images/proxy/d-apache-openssl-proxy-reverse
add src from /home/dwl/docker-images/src/proxy/d-proxy
build
no init.sh generation required with apache-openssl-proxy-reverse:2.4-u14.04
Dockerfile generated with apache-openssl-proxy-reverse:2.4-u14.04
README.md generated with apache-openssl-proxy-reverse:2.4-u14.04
docker-compose.yml generated with apache-openssl-proxy-reverse:2.4-u14.04
portainer-template generated with apache-openssl-proxy-reverse:2.4-u14.04
[32mproxy/d-apache-letsencrypt-proxy-reverse[0m
Reinit /home/dwl/docker-images/proxy/d-apache-letsencrypt-proxy-reverse
add src from /home/dwl/docker-images/src/proxy/d-proxy
build
no init.sh generation required with apache-letsencrypt-proxy-reverse:2.4-u14.04
Dockerfile generated with apache-letsencrypt-proxy-reverse:2.4-u14.04
README.md generated with apache-letsencrypt-proxy-reverse:2.4-u14.04
docker-compose.yml generated with apache-letsencrypt-proxy-reverse:2.4-u14.04
portainer-template generated with apache-letsencrypt-proxy-reverse:2.4-u14.04

##############################
#      PROCESS GITHUB        #
##############################


#### PROCESS ALL IMAGES ######

#### http/d-apache ######

2.4-u14.04
[32m/home/dwl/docker-images/http/d-apache[0m
Branch davask/d-apache:2.4-u14.04 is current
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean

[32m/home/dwl/docker-images[0m
#### http/d-apache-openssl ######

2.4-u14.04
[32m/home/dwl/docker-images/http/d-apache-openssl[0m
Branch davask/d-apache-openssl:2.4-u14.04 is current
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean

[32m/home/dwl/docker-images[0m
#### http/d-apache-letsencrypt ######

2.4-u14.04
[32m/home/dwl/docker-images/http/d-apache-letsencrypt[0m
Branch davask/d-apache-letsencrypt:2.4-u14.04 is current
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean

[32m/home/dwl/docker-images[0m
#### proxy/d-apache-proxy-reverse ######

2.4-u14.04
[32m/home/dwl/docker-images/proxy/d-apache-proxy-reverse[0m
Branch davask/d-apache-proxy-reverse:2.4-u14.04 is current
On branch 2.4-u14.04
Your branch is ahead of 'origin/2.4-u14.04' by 1 commit.
  (use "git push" to publish your local commits)
nothing to commit, working directory clean
On branch 2.4-u14.04
Your branch is ahead of 'origin/2.4-u14.04' by 1 commit.
  (use "git push" to publish your local commits)
nothing to commit, working directory clean

[1mBuilding a2.4-u14.04, allbranches with push for git and  build, nopush for docker
Processing:
- [false] Ubuntu
- [false] Debian
- [true] Apache
- [false] Php
- [false] WordPress
- [false] Symfony
- [false] ECSyMMS
[0m
Conf for a2.4-u14.04
Ubuntu    : 14.04
Debian    : Null
Apache    : 2.4
PHP       : Null
WordPress : Null
Symfony   : Null
ECSyMMS   : Null
6 Env to process :
- davask/d-apache:2.4-u14.04
- davask/d-apache-openssl:2.4-u14.04
- davask/d-apache-letsencrypt:2.4-u14.04
- davask/d-apache-proxy-reverse:2.4-u14.04
- davask/d-apache-openssl-proxy-reverse:2.4-u14.04
- davask/d-apache-letsencrypt-proxy-reverse:2.4-u14.04

##############################
#    PROCESS DOCKERFILE      #
##############################


#### PROCESS ALL IMAGES ######

[32mhttp/d-apache[0m
Reinit /home/dwl/docker-images/http/d-apache
add src from /home/dwl/docker-images/src/http/d-apache
build
volumes
init.sh generated with apache:2.4-u14.04
Dockerfile generated with apache:2.4-u14.04
README.md generated with apache:2.4-u14.04
docker-compose.yml generated with apache:2.4-u14.04
portainer-template generated with apache:2.4-u14.04
[32mhttp/d-apache-openssl[0m
Reinit /home/dwl/docker-images/http/d-apache-openssl
add src from /home/dwl/docker-images/src/http/d-apache-openssl
build
init.sh generated with apache-openssl:2.4-u14.04
Dockerfile generated with apache-openssl:2.4-u14.04
README.md generated with apache-openssl:2.4-u14.04
docker-compose.yml generated with apache-openssl:2.4-u14.04
portainer-template generated with apache-openssl:2.4-u14.04
[32mhttp/d-apache-letsencrypt[0m
Reinit /home/dwl/docker-images/http/d-apache-letsencrypt
add src from /home/dwl/docker-images/src/http/d-apache-letsencrypt
build
init.sh generated with apache-letsencrypt:2.4-u14.04
Dockerfile generated with apache-letsencrypt:2.4-u14.04
README.md generated with apache-letsencrypt:2.4-u14.04
docker-compose.yml generated with apache-letsencrypt:2.4-u14.04
portainer-template generated with apache-letsencrypt:2.4-u14.04
[32mproxy/d-apache-proxy-reverse[0m
Reinit /home/dwl/docker-images/proxy/d-apache-proxy-reverse
add src from /home/dwl/docker-images/src/proxy/d-proxy
build
no init.sh generation required with apache-proxy-reverse:2.4-u14.04
Dockerfile generated with apache-proxy-reverse:2.4-u14.04
README.md generated with apache-proxy-reverse:2.4-u14.04
docker-compose.yml generated with apache-proxy-reverse:2.4-u14.04
portainer-template generated with apache-proxy-reverse:2.4-u14.04
[32mproxy/d-apache-openssl-proxy-reverse[0m
Reinit /home/dwl/docker-images/proxy/d-apache-openssl-proxy-reverse
add src from /home/dwl/docker-images/src/proxy/d-proxy
build
no init.sh generation required with apache-openssl-proxy-reverse:2.4-u14.04
Dockerfile generated with apache-openssl-proxy-reverse:2.4-u14.04
README.md generated with apache-openssl-proxy-reverse:2.4-u14.04
docker-compose.yml generated with apache-openssl-proxy-reverse:2.4-u14.04
portainer-template generated with apache-openssl-proxy-reverse:2.4-u14.04
[32mproxy/d-apache-letsencrypt-proxy-reverse[0m
Reinit /home/dwl/docker-images/proxy/d-apache-letsencrypt-proxy-reverse
add src from /home/dwl/docker-images/src/proxy/d-proxy
build
no init.sh generation required with apache-letsencrypt-proxy-reverse:2.4-u14.04
Dockerfile generated with apache-letsencrypt-proxy-reverse:2.4-u14.04
README.md generated with apache-letsencrypt-proxy-reverse:2.4-u14.04
docker-compose.yml generated with apache-letsencrypt-proxy-reverse:2.4-u14.04
portainer-template generated with apache-letsencrypt-proxy-reverse:2.4-u14.04

##############################
#      PROCESS GITHUB        #
##############################


#### PROCESS ALL IMAGES ######

#### http/d-apache ######

2.4-u14.04
[32m/home/dwl/docker-images/http/d-apache[0m
Branch davask/d-apache:2.4-u14.04 is current
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean

[32m/home/dwl/docker-images[0m
#### http/d-apache-openssl ######

2.4-u14.04
[32m/home/dwl/docker-images/http/d-apache-openssl[0m
Branch davask/d-apache-openssl:2.4-u14.04 is current
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   Dockerfile

no changes added to commit (use "git add" and/or "git commit -a")
[2.4-u14.04 2b9f556] Automatic update 2.4-u14.04
 1 file changed, 4 insertions(+), 1 deletion(-)
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean

[32m/home/dwl/docker-images[0m
#### http/d-apache-letsencrypt ######

2.4-u14.04
[32m/home/dwl/docker-images/http/d-apache-letsencrypt[0m
Branch davask/d-apache-letsencrypt:2.4-u14.04 is current
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   Dockerfile

no changes added to commit (use "git add" and/or "git commit -a")
[2.4-u14.04 68970aa] Automatic update 2.4-u14.04
 1 file changed, 10 insertions(+), 2 deletions(-)
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean

[32m/home/dwl/docker-images[0m
#### proxy/d-apache-proxy-reverse ######

2.4-u14.04
[32m/home/dwl/docker-images/proxy/d-apache-proxy-reverse[0m
Branch davask/d-apache-proxy-reverse:2.4-u14.04 is current
On branch 2.4-u14.04
Your branch is ahead of 'origin/2.4-u14.04' by 1 commit.
  (use "git push" to publish your local commits)
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   Dockerfile

no changes added to commit (use "git add" and/or "git commit -a")
[2.4-u14.04 4ac3849] Automatic update 2.4-u14.04
 1 file changed, 9 insertions(+), 1 deletion(-)
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean

[32m/home/dwl/docker-images[0m
#### proxy/d-apache-openssl-proxy-reverse ######

2.4-u14.04
[32m/home/dwl/docker-images/proxy/d-apache-openssl-proxy-reverse[0m
Branch davask/d-apache-openssl-proxy-reverse:2.4-u14.04 is current
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   Dockerfile
	modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")
[2.4-u14.04 7503406] Automatic update 2.4-u14.04
 2 files changed, 10 insertions(+), 1 deletion(-)
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean

[32m/home/dwl/docker-images[0m
#### proxy/d-apache-letsencrypt-proxy-reverse ######

2.4-u14.04
[32m/home/dwl/docker-images/proxy/d-apache-letsencrypt-proxy-reverse[0m
Branch davask/d-apache-letsencrypt-proxy-reverse:2.4-u14.04 is current
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   Dockerfile
	modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")
[2.4-u14.04 8054b5a] Automatic update 2.4-u14.04
 2 files changed, 11 insertions(+), 5 deletions(-)
On branch 2.4-u14.04
Your branch is up-to-date with 'origin/2.4-u14.04'.
nothing to commit, working directory clean

[32m/home/dwl/docker-images[0m

##############################
#      PROCESS DOCKER        #
##############################


#### PROCESS ALL IMAGES ######

#### http/d-apache ######


###########################################################
#   DOCKER BUILD davask/d-apache:2.4-u14.04   #
###########################################################

Sending build context to Docker daemon 605.7 kB
Step 1/32 : FROM davask/d-base:u14.04
 ---> fbc5313cb802
Step 2/32 : MAINTAINER davask <docker@davaskweblimited.com>
 ---> Using cache
 ---> b1b36bfd7a83
Step 3/32 : USER root
 ---> Using cache
 ---> 2b1c44a65c50
Step 4/32 : LABEL dwl.server.http "apache 2.4-u14.04"
 ---> Using cache
 ---> 95d8d45e6885
Step 5/32 : ENV APACHE_LOCK_DIR /var/lock/apache2
 ---> Using cache
 ---> b51ac462d00d
Step 6/32 : ENV APACHE_PID_FILE /var/run/apache2.pid
 ---> Using cache
 ---> 581e466d872e
Step 7/32 : ENV APACHE_RUN_USER www-data
 ---> Using cache
 ---> 77887e03d91a
Step 8/32 : ENV APACHE_RUN_GROUP www-data
 ---> Using cache
 ---> 61142712f4c6
Step 9/32 : ENV APACHE_LOG_DIR /var/log/apache2
 ---> Using cache
 ---> d53c7ec32c73
Step 10/32 : ENV APACHE_RUN_DIR /var/run/apache2
 ---> Using cache
 ---> cff4485aa5e4
Step 11/32 : ENV DWL_HTTP_SERVERADMIN contact@davaskweblimited.com
 ---> Using cache
 ---> fa3731a087f2
Step 12/32 : ENV DWL_HTTP_DOCUMENTROOT /var/www/html
 ---> Using cache
 ---> 68b6618591bd
Step 13/32 : ENV DWL_HTTP_SHIELD false
 ---> Using cache
 ---> 41677ff0970a
Step 14/32 : RUN apt-get update && apt-get install -y apache2 apache2-utils
 ---> Using cache
 ---> 913e0cb362b3
Step 15/32 : RUN apt-get upgrade -y && apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
 ---> Using cache
 ---> 02c1a56c8fad
Step 16/32 : RUN a2enmod rewrite expires headers
 ---> Using cache
 ---> 2546f2e34f01
Step 17/32 : COPY ./build/dwl/default/etc/apache2/apache2.conf /dwl/default/etc/apache2/apache2.conf
 ---> Using cache
 ---> a016b77731e4
Step 18/32 : RUN cp -rdf /dwl/default/etc/apache2/apache2.conf /etc/apache2/apache2.conf
 ---> Using cache
 ---> 63863e10c13d
Step 19/32 : RUN a2enmod cgi
 ---> Using cache
 ---> 48ab3b7f732d
Step 20/32 : RUN a2enmod remoteip
 ---> Using cache
 ---> ee68fa29493d
Step 21/32 : RUN a2dissite 000-default && rm -f /etc/apache2/sites-available/000-default.conf
 ---> Using cache
 ---> ace3e3b1b0b9
Step 22/32 : RUN a2dissite default-ssl && rm -f /etc/apache2/sites-available/default-ssl.conf
 ---> Using cache
 ---> 31cb13251938
Step 23/32 : COPY ./build/dwl/default/etc/apache2/sites-available /dwl/default/etc/apache2/
 ---> Using cache
 ---> 52183000c14a
Step 24/32 : COPY ./build/dwl/shield/default/var/www/html/.htaccess /dwl/shield/default/var/www/html/.htaccess
 ---> Using cache
 ---> 0a0d608e78cc
Step 25/32 : EXPOSE 80
 ---> Using cache
 ---> caa216895be6
Step 26/32 : HEALTHCHECK --interval=5m --timeout=3s CMD curl -f http://localhost/ || exit 1
 ---> Using cache
 ---> 4a2ecb8c7ddc
Step 27/32 : COPY ./build/dwl/default/var/www/html /dwl/default/var/www/html
 ---> Using cache
 ---> 419d0149c8e1
Step 28/32 : RUN rm -rdf /var/www/html && cp -rdf /dwl/default/var/www/html /var/www
 ---> Using cache
 ---> de82adfad838
Step 29/32 : WORKDIR /var/www/html
 ---> Using cache
 ---> 7db9cf0d6b3a
Step 30/32 : COPY ./build/dwl/live ./build/dwl/activateconf.sh ./build/dwl/virtualhost.sh ./build/dwl/apache2.sh ./build/dwl/init.sh /dwl/
 ---> Using cache
 ---> 1dbde1c7ebeb
Step 31/32 : RUN chmod +x /dwl/init.sh && chown root:sudo -R /dwl
 ---> Using cache
 ---> 6d0ec64c21f4
Step 32/32 : USER admin
 ---> Using cache
 ---> c051e8074a94
Successfully built c051e8074a94
#### http/d-apache-openssl ######


###########################################################
#   DOCKER BUILD davask/d-apache-openssl:2.4-u14.04   #
###########################################################

Sending build context to Docker daemon 409.6 kB
Step 1/21 : FROM davask/d-apache:2.4-u14.04
 ---> c051e8074a94
Step 2/21 : MAINTAINER davask <docker@davaskweblimited.com>
 ---> Using cache
 ---> bd23d8944bbe
Step 3/21 : USER root
 ---> Using cache
 ---> e0d85d4813bd
Step 4/21 : LABEL dwl.server.https "openssl"
 ---> Using cache
 ---> ddff3cddba11
Step 5/21 : ENV APACHE_SSL_DIR /etc/apache2/ssl
 ---> Using cache
 ---> 408f3a4ddb99
Step 6/21 : ENV DWL_SSLKEY_C "EU"
 ---> Using cache
 ---> f05ab1d2237a
Step 7/21 : ENV DWL_SSLKEY_ST "France"
 ---> Using cache
 ---> 4a98b190e998
Step 8/21 : ENV DWL_SSLKEY_L "Vannes"
 ---> Using cache
 ---> c680204a5e8d
Step 9/21 : ENV DWL_SSLKEY_O "davask web limited - docker container"
 ---> Using cache
 ---> 3fef2888939a
Step 10/21 : ENV DWL_SSLKEY_CN "davaskweblimited.com"
 ---> Using cache
 ---> 352c3abf9695
Step 11/21 : RUN mkdir -p /etc/apache2/ssl
 ---> Running in d4a750e28df9
 ---> b7d9b433c39f
Removing intermediate container d4a750e28df9
Step 12/21 : RUN chmod 700 /etc/apache2/ssl
 ---> Running in 6b7d5f307186
 ---> 80e43be709ba
Removing intermediate container 6b7d5f307186
Step 13/21 : RUN rm -f /etc/apache2/sites-enabled/default-ssl.conf &>> null
 ---> Running in ea144cd15734
 ---> d05d403cb86a
Removing intermediate container ea144cd15734
Step 14/21 : RUN rm -f /etc/apache2/sites-available/default-ssl.conf &>> null
 ---> Running in e7524c26ecf0
 ---> 7552dd1365c8
Removing intermediate container e7524c26ecf0
Step 15/21 : COPY ./build/dwl/default/etc/apache2/mods-available/ssl.conf /etc/apache2/mods-available/ssl.conf
 ---> a076b69267bc
Removing intermediate container 1bb10a77f6b3
Step 16/21 : RUN a2enmod ssl
 ---> Running in 5de7e6748aab
Considering dependency setenvif for ssl:
Module setenvif already enabled
Considering dependency mime for ssl:
Module mime already enabled
Considering dependency socache_shmcb for ssl:
Enabling module socache_shmcb.
Enabling module ssl.
See /usr/share/doc/apache2/README.Debian.gz on how to configure SSL and create self-signed certificates.
To activate the new configuration, you need to run:
  service apache2 restart
 ---> 5e6d78c74d62
Removing intermediate container 5de7e6748aab
Step 17/21 : COPY ./build/dwl/default/etc/apache2/sites-available/0000_docker.davaskweblimited.com_443.conf.dwl /dwl/default/etc/apache2/sites-available/0000_docker.davaskweblimited.com_443.conf.dwl
 ---> ba7aed28acf1
Removing intermediate container 1a8ddeb574c6
Step 18/21 : EXPOSE 443
 ---> Running in 159d9c3299e1
 ---> 885cd1cc345c
Removing intermediate container 159d9c3299e1
Step 19/21 : COPY ./build/dwl/openssl.sh ./build/dwl/virtualhost-ssl.sh ./build/dwl/init.sh /dwl/
 ---> 3ed46e34b68a
Removing intermediate container a9a2fb57158d
Step 20/21 : RUN chmod +x /dwl/init.sh && chown root:sudo -R /dwl

