  # uri = URI.parse('redis://localhost:6379/')
  # REDIS = Redis.new(url: uri)
REDIS = Redis.new( Rails.configuration.x.redis_endpoint )
