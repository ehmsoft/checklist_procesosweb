source 'https://rubygems.org'

ruby "2.0.0"
gem 'rails', '4.0.0'


group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails', '2.14.0'
  gem 'factory_girl_rails'
end

group :test do
  gem 'capybara'
  gem 'launchy'
end

gem 'sass-rails',   '~> 4.0.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'


gem 'jquery-rails'

group :production do
  gem 'pg'
  gem 'unicorn'
  # Esta gema debe ser incluida para mejor compatibilidad con Heroku
  gem 'rails_12factor'
end

gem 'faker', '1.2.0'
gem 'bootstrap-sass'

gem 'devise', '~> 3.0.0'
gem "rack-timeout"
# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

#Para poder tener attr_accessible en Rails 4
gem 'protected_attributes'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

gem 'actionpack-page_caching'
