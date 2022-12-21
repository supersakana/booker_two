source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.3'

gem 'rails', '~> 7.0.4'

gem 'sprockets-rails'

gem 'pg', '~> 1.1'

gem 'puma', '~> 5.0'

gem 'importmap-rails'

gem 'turbo-rails'

gem 'stimulus-rails'

gem 'jbuilder'

gem 'redis', '~> 4.0'

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'bootsnap', require: false

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
end

group :development do
  gem 'letter_opener'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'rspec-rails', '>= 3.9.0'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
