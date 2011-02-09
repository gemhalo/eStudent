source 'http://rubygems.org'
#Gems required for all environments

gem 'rails', '3.0.3'
#We will enable this when we want to work with  Bundle edge Rails instead: 
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem  'will_paginate', '~>3.0.pre2'
#To generate model diagrams 
gem  'railroad'

# User experience using ExtJS javascript framework and netzke rails-ExtJS bridge
gem 'netzke-core',  :git => "http://github.com/skozlov/netzke-core.git"
gem 'netzke-basepack', :git => "http://github.com/skozlov/netzke-basepack.git"

gem 'netzke_widget_generators'
gem 'netzke-persistence'
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
    gem 'minitest'
    
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
