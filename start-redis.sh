#!/bin/sh

# Check if process with specified pidfile is running
check_pid() {
  [ -f $1 ] && kill -0 "$(cat $1)" 2> /dev/null
}

check_pid /var/run/redis1.pid || /usr/bin/redis-server /vagrant/redis1.conf
check_pid /var/run/redis2.pid || /usr/bin/redis-server /vagrant/redis2.conf
check_pid /var/run/redis3.pid || /usr/bin/redis-server /vagrant/redis3.conf
