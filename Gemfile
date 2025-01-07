source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'


gem 'bootsnap', require: false

gem 'mercadopago-sdk'
gem 'paranoia'
gem 'pg'
gem 'puma'
gem 'rack-cors'
gem 'rails'
gem 'ransack', github: 'activerecord-hackery/ransack'
gem 'redis'
gem 'rest-client'
gem 'sib-api-v3-sdk'
gem 'sidekiq'
gem 'sidekiq-scheduler'
gem 'sidekiq-throttled'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'byebug'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'rspec-benchmark'
  gem 'rspec-rails'
  gem 'rubocop-rspec'
  gem 'webmock'
end

group :test do
  gem 'database_cleaner-active_record'
end

group :development do
  gem 'letter_opener_web'
  gem 'rubocop-performance'
  gem 'rubocop-rake'
  gem 'solargraph'
  gem 'solargraph-rails'
  gem 'spring'
end
