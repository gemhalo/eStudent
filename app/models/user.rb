class User < ActiveRecord::Base
  #include Humanizer
  #require_human_on :create #
  belongs_to :person

  acts_as_authentic

	ROLES = %w[admin student  guest instructor student_service_staff]
	def role?(base_role)
  		ROLES.index(base_role.to_s) <= ROLES.index(role)
	end



  def send_password
    new_pass = User.random_string(6)
    self.password = self.password_confirmation = new_pass

    self.save

    Notification.deliver_forgot_password(self.email,self.username,  new_pass)
  end

  def self.random_string(len)
    #generat a random password consisting of strings and digits
    chars = ("a".."z").to_a + ("A".."Z").to_a + ("0".."9").to_a
    newpass = ""
    1.upto(len) { |i| newpass << chars[rand(chars.size-1)] }
    return newpass
  end


end

