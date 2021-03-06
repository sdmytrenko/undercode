source 'https://rubygems.org'
ruby '2.3.1'

gem 'rails', '~> 5.0.1'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'bootstrap-sass'
gem "font-awesome-rails"

gem 'devise'
gem 'high_voltage'
gem 'simple_form'
gem 'slim-rails'
gem 'therubyracer', :platform=>:ruby

gem 'omniauth-github'
gem "wysiwyg-rails"
gem 'truncate_html'

gem 'carrierwave', '>= 1.0.0.rc', '< 2.0' # Add images
gem "mini_magick" # for carrierwave

group :development do
  gem 'annotate' # annotating models
  gem 'better_errors' # for views

  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'rails_layout'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'byebug' #, platform: :mri
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'pry-rails' # better view for console objects
  gem 'pry-rescue'
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'sqlite3'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
end
