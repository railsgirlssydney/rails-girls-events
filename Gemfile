source 'https://rubygems.org'
ruby '2.6.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.21'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sassc-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'acts_as_commentable'
gem 'figaro'
gem 'font-awesome-rails'
gem 'sendgrid'
# Premailer for styling HTML emails with CSS
# gem 'premailer-rails'
gem 'simple_form'
# Use ActiveModel has_secure_password
gem 'bcrypt'
# Admin login
gem 'devise'
gem 'webpacker'

group :development do
  gem 'pry-rails'
  gem 'pry-stack_explorer'
  gem 'annotate'
  # gem 'quiet_assets'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console'
  # Traceroute shows you unused routes and unreachable action methods
  gem 'traceroute'
end

group :development, :test do
  gem 'pry-byebug'
  gem 'rspec-rails', '~> 4.0.0.beta2' # required for rails 6 compatibility
  gem 'rails-controller-testing'      # rspec 4 requirement
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen'
end

group :test do
  gem 'capybara'
  gem 'simplecov'
end
