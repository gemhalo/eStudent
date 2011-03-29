class Notifications < ActionMailer::Base
  default :from => "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  # en.notifications.forgot_password.subject
  #

  def forgot_password(to, user_name, pass)
    @subject= "Mekelle University: SIS Your password is ... #{pass}"
    @greeting = "Dear... #{user_name}"
    @message = "your user name and password are as below please change your password so that it is memorable"
    @body= "Dear... #{user_name} your user name and password are as below please change your password so that it is memorable "
    @recipients= to
    @from= 'ama.ghya@gmail.com'
    @sent_on = Time.now
    @headers = {}
    .ma
end
end
