#source 'http://rubygems.org'
#Gems required for all environments
gem 'rails', '3.0.4'
#We will enable this when we want to work with  Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Security
gem 'authlogic'
gem 'cancan'
gem 'humanizer'
gem 'wicked_pdf'
# Spread sheet types
gem 'fastercsv'

#PDF
gem 'pdfkit'

gem  'will_paginate', '~>3.0.pre2'
#To generate model diagrams
gem  'railroad'

#gem 'roo', '1.9.3'

#gem 'rubyzip','0.9.4'

#gem 'nokogiri'
gem 'paperclip'

#gem 'spreadsheet'
#gem 'odf-spreadsheet'
#gem 'google-spreadsheet-ruby'
# User experience using ExtJS javascript framework and netzke rails-ExtJS bridge
# Get it from git repo and install it
#gem 'netzke-core', :git  => "http://github.com/skozlov/netzke-core.git"
#gem 'netzke-basepack', :git => "http://github.com/skozlov/netzke-basepack.git"
#gem 'netzke-core', '0.6.6', :git  => "http://github.com/skozlov/netzke-core.git"
#gem 'netzke-basepack', '0.6.5', :git => "http://github.com/skozlov/netzke-basepack.git"
#gem 'netzke-persistence', '0.1.1', :git => "http://github.com/skozlov/netzke-persistence.git"

#gem 'netzke-core', :git  => "http://github.com/skozlov/netzke-core.git", :tag => 'v0.6.6'
#gem 'netzke-basepack', :git => "http://github.com/skozlov/netzke-basepack.git", :tag => 'v0.6.4'
#gem 'netzke-persistence', :git => "http://github.com/skozlov/netzke-persistence.git"


#Or simply use the installed gem
gem 'netzke-core', '0.6.6'
gem 'netzke-basepack', '0.6.4'
gem 'netzke-persistence'

#Or clone each package in vendor/gems/netzke then use it from there
#gem 'netzke-core',          :path => File.expand_path('../vendor/gems/netzke/netzke-core', __FILE__)
#gem 'netzke-basepack',      :path => File.expand_path('../vendor/gems/netzke/netzke-basepack', __FILE__)
#gem 'netzke-persistence',   :path => File.expand_path('../vendor/gems/netzke/netzke-persistence', __FILE__)

gem 'netzke_widget_generators'
gem 'netzke_config'

#Creates dependencies for RMagick we'll get this later
#gem 'extjs-theme'

#Hashie
gem 'hashie'
#Rails 3 generators
gem 'rails3-generators'

#Haml is a templating engine
gem 'haml'
#Sass
gem 'sass'
#Gems required for development environment
group :development do

  # PostgreSQL
  #gem 'pg', :require => 'pg'
  #MySQL
  #gem 'mysql2', :require => 'mysql2'
  #SQLite
  #gem 'sqlite3-ruby', :require => 'sqlite3'

end

#Gems required for test environment
group :test do

  # PostgreSQL
  #gem 'pg', :require => 'pg'
  #MySQL
  #gem 'mysql2', :require => 'mysql2'
  #SQLite
  #gem 'sqlite3-ruby', :require => 'sqlite3'

end

#Gems required for production environment
group :production do

  # PostgreSQL
  #gem 'pg', :require => 'pg'
  #MySQL
  #gem 'mysql2', :require => 'mysql2'
  #SQLite
  #gem 'sqlite3-ruby', :require => 'sqlite3'

end

#Gems required for development and test environments
group :development, :test do

  # PostgreSQL
  #gem 'pg', :require => 'pg'
  #MySQL
  gem 'mysql2', :require => 'mysql2'
  #SQLite
  gem 'sqlite3-ruby', :require => 'sqlite3'

  #Faker
  gem 'faker'
  gem 'dummy'
  gem 'dummy_data'
  #gem 'ffaker'
  #gem 'fake_arel'
  #   gem 'fakehttp'
  gem 'fakeldap'

  #RSpec
  gem 'rspec-rails','>=2.5.0'
  #gem 'webrat'
  #gem 'capybara'
  gem 'cucumber'
  #gem 'minitest'

  #gem 'remarkable_rails'

  #Factory Girl
  #gem 'factory_girl'
  #gem 'factory_girl_rails'
  #gem 'factory_data_preloader'
  #gem 'fixture_builder'

end

#Gems required for development and production environments
group :development, :production do

  # PostgreSQL
  #gem 'pg', :require => 'pg'
  #MySQL
  #gem 'mysql2', :require => 'mysql2'
  #SQLite
  #gem 'sqlite3-ruby', :require => 'sqlite3'

end

#Gems required for test and production environments
group :test, :production do

  # PostgreSQL
  #gem 'pg', :require => 'pg'
  #MySQL
  #gem 'mysql2', :require => 'mysql2'
  #SQLite
  #gem 'sqlite3-ruby', :require => 'sqlite3'

end

group :profiling do
  #gem 'rack-perftools_profiler', '>= 0.1', :require => 'rack/perftools_profiler'
end

gem 'wkhtmltopdf'
gem 'pdfkit'