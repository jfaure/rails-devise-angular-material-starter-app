source 'https://rubygems.org'
ruby "2.1.3"

gem 'rails', '4.1.8'
gem 'devise'
gem 'active_model_serializers'

gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'

gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'

gem 'bower-rails'
gem 'angular-rails-templates'
gem 'angular_rails_csrf'

gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'spring',        group: :development
gem 'quiet_assets', group: :development

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem "factory_girl_rails", "~> 4.0"
end

group :production, :staging do
  gem 'rails_12factor'
  gem 'pg'
end