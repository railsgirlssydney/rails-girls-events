source 'https://rubygems.org'
ruby '2.6.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.2'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.21'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sassc-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'acts_as_commentable'
gem 'figaro'
gem 'font-awesome-rails'
gem 'sendgrid'
# Premailer for styling HTML emails with CSS
gem 'premailer-rails'
gem 'simple_form'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
# Admin login
gem 'devise'

group :development do
  gem 'pry-rails'
  gem 'pry-stack_explorer'
  gem 'annotate'
  gem 'quiet_assets'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Traceroute shows you unused routes and unreachable action methods
  gem 'traceroute'
end

group :development, :test do
  gem 'pry-byebug'
  gem 'rspec-rails', '~> 4.0.0.beta2' # required for rails 6 compatibility
  gem 'rails-controller-testing'      # rspec 4 requirement
  gem 'capybara'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'simplecov'
end
