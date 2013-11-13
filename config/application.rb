require File.expand_path('../boot', __FILE__)

require "action_controller/railtie"
require "action_mailer/railtie"
require "rails/test_unit/railtie"
require "sprockets/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module IwebAdmin
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.autoload_paths += %W(#{config.root}/lib)
    config.paths.add "app/api", glob: "**/*.rb"
    config.autoload_paths += Dir["#{Rails.root}/app/api/*"]

    config.middleware.use Rack::Cors do
        allow do
          origins '*'
          # location of your API
          resource '/api/*', :headers => :any, :methods => [:get, :post, :options, :put]
        end
    end

    config.time_zone = 'Beijing'

    config.i18n.default_locale = :"zh-cn"

    config.mongoid.include_root_in_json = false
  end
end
