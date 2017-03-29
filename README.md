# dockerfile

see [FROM IMAGE README.md](https://github.com/davask/d-base)

## Open port
- 80

### Apache2 activation

#### comment

- automatic configuration are handle for filename as [0-9]{4}\-subdomain\.domain\.tld\-[0-9]{2,3}\.conf\.dwl

- On start all *.conf in /etc/apache2/sites-available are enabled

## LABEL

> dwl.server.http="apache 2.4-u14.04"


