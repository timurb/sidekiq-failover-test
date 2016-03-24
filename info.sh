#!/bin/sh

PORTS="$*"
[ -z "${PORTS}" ] && PORTS="1 2 3"

for id in ${PORTS}; do
  echo "637${id}"
  redis-cli -p 637${id} info | grep -A5 role:
done
date
