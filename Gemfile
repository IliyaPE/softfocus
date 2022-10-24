source 'https://rubygems.org'

ruby "3.1.0"

gem 'sassc-rails'
gem 'coffee-rails'
gem 'mini_racer'
gem 'listen'
gem 'rails', '~> 7.0.3'
gem 'json'
gem 'mongoid'
gem 'jquery-rails'
gem 'haml'
gem 'mongoid-paperclip', github: 'jarthod/mongoid-paperclip', branch: 'fix-id-partition' # waiting for https://github.com/mrrooijen/mongoid-paperclip/pull/82 to be merged
gem 'kaminari-mongoid'
gem 'kaminari-actionview'
gem 'puma', '~> 5.6' # puma 6 is not supported by latest capaybara yet (3.37.1)

group :test, :development do
  gem 'capybara'
  gem 'cuprite'
  gem 'rspec-rails'
end