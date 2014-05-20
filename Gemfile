source 'https://rubygems.org'

ruby '2.1.0'

gem 'rails', '4.1.0'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jquery-turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'bootstrap-sass' # For aesthetics
gem 'devise', '~> 3.1.0.rc2' # For login and signup/authentication
gem 'paperclip', github: 'thoughtbot/paperclip' # Enables users to upload images
# gem 'aws-sdk' , '~> 1.20.0' # Amazon web service - for keeping images visible when app is on Heroku
gem 'masonry-rails', '~> 0.2.0'
gem 'will_paginate', '~> 3.0'
gem 'will_paginate-bootstrap'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '~> 0.4.0', require: false
end

group :development, :test do
  gem 'sqlite3' # Test database
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
