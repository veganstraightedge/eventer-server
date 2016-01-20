source "https://rubygems.org"

ruby "2.3.0"

# application server
gem "rails", "4.2.4"

# database
gem "pg"

# web server
gem "puma"
gem "rack-timeout"

# stylesheets and javascripts
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.1.0"
gem "jquery-rails"
gem "font-awesome-rails"

# auth
gem "bcrypt", "~> 3.1.7"

# pagination
gem "will_paginate"

# country names, codes, lat/lon, etc
# require is for convenience class Country.new instead of ISO3166::Country.new
gem "countries", require: "countries/global"

group :development, :test do
  gem "byebug"
  gem "rspec-rails"
  gem "codeclimate-test-reporter", require: false
end

group :development do
  gem "web-console", "~> 2.0"
  gem "rubocop", require: false
end

# heroku
group :production do
  gem "rails_12factor"
end
