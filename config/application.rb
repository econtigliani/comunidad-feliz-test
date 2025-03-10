require_relative "boot"

require "rails/all"
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AccessMarketApi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.i18n.default_locale = :es

    config.email_regex = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    config.number_regex = /\A[1-9]\d*\z/
    config.subdomain_regex = /\A[a-z0-9][a-z0-9\-]*[a-z0-9]\z/
    config.hex_color_regex = /\A[a-z0-9][a-z0-9\-]*[a-z0-9]\z/

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true

    config.active_support.to_time_preserves_timezone = :zone

    # Set session store for sidekiq
    config.session_store :cookie_store, key: "_interslice_session"
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use config.session_store, config.session_options
    config.active_job.queue_adapter = :sidekiq

    config.environments = {
      development: {
        host: "http://public.lvh.me:3000",
        front: "http://public.lvh.me:3001"
      },
      test: {
        host: "http://public.lvh.me:3000",
        front: "http://public.lvh.me:3001"
      }

    }
  end
end
