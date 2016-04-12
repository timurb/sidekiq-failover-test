  # uri = URI.parse('redis://localhost:6379/')
  # REDIS = Redis.new(url: uri)
REDIS = Redis.new(
  url: "redis://mymaster",
  sentinels: [
    { host: "localhost", port: 26371 },
    { host: "localhost", port: 26372 },
    { host: "localhost", port: 26373 }
  ]
)
