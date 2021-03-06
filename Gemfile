source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.7'

# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '~> 9.0', '>= 9.0.6', platform: [:mri, :mingw, :x64_mingw]
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  # Clean up database
  gem 'database_cleaner'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'rails-controller-testing', '1.0.2'
  # gem 'minitest',                 '5.10.3'
  # gem 'minitest-reporters',       '1.1.14'
  # gem 'guard',                    '2.13.0'
  # gem 'guard-minitest',           '2.4.4'
end

group :production do
  gem 'pg', '0.20.0'
  # Upload pictures
  # gem 'fog', '1.42.0' #not compatible with 'httparty' gem
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Make password digest
gem 'bcrypt', '3.1.12'

# Simplify style-sheet
gem 'bootstrap-sass', '3.3.7'

# For using API
gem 'httparty', '0.13.5'

# Make sample users with semi-realistic names and email addresses
gem 'faker', '1.7.3'

# Configure will_paginate to use Bootstrap's pagination styles
gem 'will_paginate', '3.1.6'
gem 'bootstrap-will_paginate', '1.0.0'

# Upload images
gem 'carrierwave', '1.2.2'
gem 'mini_magick', '4.7.0'

# Paginate on array
gem 'kaminari'
gem 'kaminari-bootstrap'

# Japanize
gem 'rails-i18n'

# SNS login
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'omniauth-google-oauth2'
gem 'omniauth-line'
gem 'bootstrap-social-rails'
gem 'font-awesome-rails'

# いいねcounter
gem 'counter_culture', '~> 1.8'

# Graph
gem "chartkick"

# gem 'json (~>2.0, ~>1.8)'