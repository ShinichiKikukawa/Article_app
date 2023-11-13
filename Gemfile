#gemfile
source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

gem 'rails', '~> 6.1.7', '>= 6.1.7.6'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'bootstrap', '~> 5.3', '>= 5.3.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'devise'
gem 'rails-i18n'
gem 'devise-i18n'
gem 'mini_magick'
gem 'carrierwave'

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem "redis", "~> 5.0"
gem "sentry-ruby", "~> 5.12"
gem "sentry-rails", "~> 5.12"

group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '~> 1.4'
end

group :development do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
  gem 'letter_opener_web'
  gem "dockerfile-rails", ">= 1.5"
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver', '>= 4.0.0.rc1'
  gem 'webdrivers'
end

group :production do
  gem 'pg', '~> 1.1'
end
