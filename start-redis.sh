#!/bin/sh

# Check if process with specified pidfile is running
check_pid() {
  [ -f $1 ] && kill -0 "$(cat $1)" 2> /dev/null
}

check_pid /var/run/redis1.pid || sudo -u redis /usr/bin/redis-server /vagrant/etc/redis1.conf
check_pid /var/run/redis2.pid || sudo -u redis /usr/bin/redis-server /vagrant/etc/redis2.conf
check_pid /var/run/redis3.pid || sudo -u redis /usr/bin/redis-server /vagrant/etc/redis3.conf
