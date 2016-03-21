#!/bin/sh

usage() {
  cat << EOF
Usage: $(basename $0) MASTER

Where MASTER is any of 1,2,3.
EOF
  exit 1
}

[ -z "$1" ] && usage

MASTER="$1"
SLAVES="$(echo '1 2 3' | sed "s,${MASTER},,")"

redis-cli -p "637${MASTER}" slaveof no one

for N in ${SLAVES}; do
  redis-cli -p "637${N}" slaveof 127.0.0.1 "637${MASTER}"
done
