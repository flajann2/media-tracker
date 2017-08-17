source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.2'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'devise'
gem 'devise_token_auth'
gem 'omniauth'
gem 'pg_search'
gem 'opal-rails'
gem 'coffee-rails', '~> 4.2'
gem 'haml-rails'
gem 'jbuilder', '~> 2.5'
gem 'rabl-rails'
gem 'oj'

group :development, :test do
  gem 'api_blueprint'
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'rspec-rails', '~> 3.6'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers', git: 'https://github.com/thoughtbot/shoulda-matchers.git', branch: 'rails-5'
  gem 'faker'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'guard-rspec', require: false
  gem "pry", "~> 0"
  gem "pry-byebug", "~> 3"
  gem "pry-doc", "~> 0"
  gem "pry-remote", "~> 0"
  gem "pry-rescue", "~> 1"
  gem "pry-stack_explorer", "~> 0"
end
