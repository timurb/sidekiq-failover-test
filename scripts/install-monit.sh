#!/bin/sh

yum install -y monit
cp -f etc/monit-redis.conf /etc/monit.d/redis.conf

cat << EOF
 
Edit /etc/monit.d/redis.conf to check that all is ok for you
Run 'monit reload' to apply the changes
EOF
