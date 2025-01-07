require "sidekiq/web"
require "sidekiq-scheduler/web"
require "sidekiq/throttled/web"

Sidekiq::Web.use(Rack::Auth::Basic) do |user, password|
  [ user, password ] == %w[admin please-change-me]
end

Rails.application.routes.draw do
  mount Sidekiq::Web => "/sidekiq"




  get "/health", to: proc { [ 200, {}, [] ] }
end
