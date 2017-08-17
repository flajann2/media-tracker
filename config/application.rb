require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MediaTracker
  class Application < Rails::Application
    config.load_defaults 5.1
    config.api_only = true
    config.debug_exception_response_format = :default
    config.debug_exception_response_format = :api
    config.middleware.use Rack::MethodOverride
 end
end
