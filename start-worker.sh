#!/bin/sh

bundle exec sidekiq -r "$(dirname $0)/lib/myworker.rb"
