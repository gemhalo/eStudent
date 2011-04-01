# Load the rails application
require File.expand_path('../application', __FILE__)

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :enable_starttls_auto => true,
  :port => 587,
  :domain => "google_domain",
  :user_name => "yonimethodic@gmail.com",
  :password => "0116456767",
  :authentication => :plain,
  :tls => true
}
# Initialize the rails application
EStudent::Application.initialize!

