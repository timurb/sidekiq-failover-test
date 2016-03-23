#!/bin/sh

usage() {
  cat << EOF
Usage: $(basename $0) NODE

Where NODE is any of 1,2,3.
EOF
  exit 1
}

[ -z "$1" ] && usage

redis-cli -p "637${NODE}" debug segfault

echo "Run 'start-redis.sh' to bring redis up"
