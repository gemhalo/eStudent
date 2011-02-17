class Notification < ActionMailer::Base
  default :from => "from@example.com"

  def forgot_password(to, user_name, pass)
    @subject= "Mekelle University: SIS Your password is ... #{pass}"
    @body= "Dear... #{user_name} your user name and password are as below please change your password so that it is memorable "
    @body= user_name
    @recipients= to
    @from= 'ama.ghya@gmail.com'
    @sent_on = Time.now
    @headers = {}
end

end
