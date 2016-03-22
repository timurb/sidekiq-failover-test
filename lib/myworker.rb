require 'sidekiq'

# If your client is single-threaded, we just need a single connection in our Redis connection pool
Sidekiq.configure_client do |config|
  config.redis = {
    namespace: 'x',
    size: 1,
    url: 'redis://localhost:6371'
  }
end

# Sidekiq server is multi-threaded so our Redis connection pool size defaults to concurrency (-c)
Sidekiq.configure_server do |config|
  config.redis = {
    namespace: 'x',
    url: 'redis://localhost:6371'
  }
end

class MyWorker
  include Sidekiq::Worker

  def perform(sequence, delay=1)
    sleep delay
    File.open('checkins.txt', 'a') do |f|
      f.puts(sequence)
    end
  end
end
