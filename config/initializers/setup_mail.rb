# To change this template, choose Tools | Templates
# and open the template in the editor.

class Setup_mail
  def initialize
    ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "asciicasts.com",
  :user_name            => "asciicasts",
  :password             => "secret",
  :authentication       => "plain",
  :enable_starttls_auto => true
}  
  end
end
