# Load the rails application
require File.expand_path('../application', __FILE__)

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 587,
  :domain => "google_domain",
  :user_name => "ama.ghya@gmail.com",
  :password => "amanuel123",
  :authentication => :plain,
  :tls => true
}
# Initialize the rails application
EStudent::Application.initialize!

