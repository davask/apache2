# dockerfile

see [FROM IMAGE README.md](https://github.com/davask/d-base)

## Open port
- 80

### Apache2 activation

#### comment

- to avoid init error all conf file in /etc/apache2/sites-available have to be in the format of sub.domain.ext.conf like docker.davaskweblimited.com.conf

- On start all *.conf in /etc/apache2/sites-available are enabled

## LABEL

> dwl.server.http="apache 2.4"
