#!/usr/bin/env ruby

require "#{::File.dirname(__FILE__)}/worker"

require 'sidekiq/web'
app = Sidekiq::Web
app.set :environment, :production
app.set :bind, '0.0.0.0'
app.set :port, 9494
app.run!
