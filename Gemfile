source 'https://rubygems.org'

# Fetch current ruby version
ruby File.read('.ruby-version').chomp

# Allow github shorthand
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Core
gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'redis', '~> 3.0'
gem 'seedbank', '~> 0.4.0'

# Assets
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'therubyracer', platforms: :ruby
gem 'turbolinks', '~> 5'

# API
gem 'jsonapi-resources', '~> 0.9.0'

# Test
group :test do
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'pry'
end

# Dev
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'annotate', '>= 2.7.2'
  gem 'pry'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
