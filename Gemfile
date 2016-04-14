source 'https://rubygems.org'

#----------------
# user-interface
#----------------

gem 'bcrypt-ruby'
gem 'carrierwave', '0.10.0' # used for users to upload things
gem 'mini_magick', '3.8.0' # used for resizing images
gem 'paperclip'
gem 'rmagick' # used for resizing images with carrierwave
gem 'devise', '~> 3.4.0'
gem 'cancan'

#----------------
# views
#----------------

gem 'bootstrap-sass', '3.2.0.0'
gem 'will_paginate', '3.0.7'
gem 'bootstrap-will_paginate', '0.0.10'

#----------------
# databases
#----------------

gem 'arel'
gem 'mysql2', '~> 0.3.18' 
gem "bullet", :group => "development" # helps alert you for N+1 queries, which are bad

#----------------
# backstage-info
#----------------

gem 'rack-mini-profiler' # displays speed badge for every html page

#----------------
# other
#----------------

gem 'thin' # web server
gem 'mime-types-data'
gem 'impressionist'

#----------------
# security
#----------------

group :development do
  gem 'brakeman', :require => false # security analysis tool
end



# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'debugger' anywhere in the code to stop execution and get a debugger console
  gem 'debugger'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

