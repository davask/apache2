# dockerfile

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

> dwl.server.http="apache u14.04"


