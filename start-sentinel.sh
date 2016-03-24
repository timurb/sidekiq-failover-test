#!/bin/sh

for N in 1 2 3; do
  sudo cp -f etc/redis-sentinel.conf /tmp/redis-sentinel$N.conf
  sudo sed -i "s,XXX,$N,g" /tmp/redis-sentinel$N.conf
  sudo chown redis /tmp/redis-sentinel$N.conf
  sudo -u redis redis-sentinel /tmp/redis-sentinel$N.conf &
done
