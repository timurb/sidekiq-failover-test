#!/bin/sh

usage() {
  cat << EOF
Usage: $(basename $0) NODE [SECONDS]

Where NODE is any of 1,2,3.
EOF
  exit 1
}

[ -z "$1" ] && usage
SECONDS="${2:-30}"

redis-cli -p "637${NODE}" debug sleep "${SECONDS}"
