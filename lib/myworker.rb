require 'sidekiq'

redis_conn = proc {
  redis = Redis.new(:url => "redis://mymaster",
                    :sentinels => [
                      {:host => "localhost", :port => 26371},
                      {:host => "localhost", :port => 26372},
                      {:host => "localhost", :port => 26373}
                    ])
}

Sidekiq.configure_client do |config|
  config.redis = ConnectionPool.new(size: 5, &redis_conn)
end

Sidekiq.configure_server do |config|
  config.redis = ConnectionPool.new(size: 25, &redis_conn)
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
