require 'sidekiq'

Sidekiq.configure_server do |config|
  config.redis = { url: ENV.fetch('REDIS_URL') { 'redis://redis:6379/0' } }
  # config.on(:startup) do
  #   ActiveRecord::Base.clear_active_connections!
  # end
end

Sidekiq.configure_client do |config|
  config.redis = { url: ENV.fetch('REDIS_URL') { 'redis://redis:6379/0' } }
end
