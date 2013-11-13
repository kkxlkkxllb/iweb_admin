source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

gem 'bourbon'

group :doc do
	# bundle exec rake doc:rails generates the API under doc/api.
	gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

group :production do
	gem 'unicorn'
end

group :development, :test do
	gem 'rspec-rails', '~> 2.10.0'
	gem 'factory_girl_rails'
	gem 'quiet_assets'
	gem 'database_cleaner'
end

gem 'capistrano'
gem "rvm-capistrano"

gem 'rails_admin'
gem "devise"
gem "slim-rails"

gem 'grape'
gem 'rack-cors', :require => 'rack/cors'

gem "mongoid", '~> 4', github: 'mongoid/mongoid'
gem 'garb', :git => 'git://github.com/Sija/garb.git'