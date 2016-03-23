#!/bin/sh

rm -f checkins.txt
bundle exec sidekiq -r "$(dirname $0)/lib/myworker.rb"
