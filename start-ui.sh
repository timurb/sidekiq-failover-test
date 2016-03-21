#!/bin/sh

IP="$(ip addr show dev eth1 | grep 'inet ' | awk '{print $2}' | sed 's,/.*,,')"
echo "Click the link to access WebUI: http://${IP}:9494"
bundle exec "$(dirname $0)/webui.rb"
