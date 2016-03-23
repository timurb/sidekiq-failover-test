#!/bin/sh

for N in 1 2 3; do
  cp -f etc/redis-sentinel.conf /tmp/redis-sentinel$N.conf
  sed -i "s,XXX,$N,g" /tmp/redis-sentinel$N.conf
  chmod a+w /tmp/redis-sentinel$N.conf
  sudo -u redis redis-sentinel /tmp/redis-sentinel$N.conf &
done
