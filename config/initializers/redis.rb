redis_url = ENV['REDIS_URL'] || 'redis://127.0.0.1:6379'
redis_db = "6"
redis_full_url = "#{redis_url}/#{redis_db}"
Sidekiq.configure_server do |config|
  config.redis = { url: redis_full_url}
end

Sidekiq.configure_client do |config|
  config.redis = { url: redis_full_url }
end