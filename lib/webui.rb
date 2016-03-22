#!/usr/bin/env ruby

require 'myworker'

require 'sidekiq/web'
require 'sidekiq-statistic'

app = Sidekiq::Web
app.set :environment, :production
app.set :bind, '0.0.0.0'
app.set :port, 9494
app.run!
