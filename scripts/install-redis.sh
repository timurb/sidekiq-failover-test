#!/bin/sh

echo "WARNING: 3rd party repository used with unstable redis. Be careful when using for production"

rpm -Uvh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
yum --enablerepo=remi,remi-test -y install redis

mkdir -p /var/lib/redis1; chown redis: /var/lib/redis1
mkdir -p /var/lib/redis2; chown redis: /var/lib/redis2
mkdir -p /var/lib/redis3; chown redis: /var/lib/redis3
