#!/bin/sh

rm -f checkins.txt
bundle exec ruby -Ilib "$(dirname $0)/lib/sender.rb"
