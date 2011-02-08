class User < ActiveRecord::Base
	validates :user_name, :presence => true, :uniqueness => true
	validates :password, :confirmation => true
	attr_accessor :password_confirmation
	attr_reader :password
	validate :password_must_be_present
	
	private
	def password_must_be_present
		errors.add(:password, "Missing ") unless hashed_password.present?
	end
class << self
    def authenticate(name, password)
         logger.info("--from auth---username(param)---------------------#{name}---------------------------")
         logger.info("---from auth--password(param)---------------------#{password}---------------------------")
        if user = find_by_user_name(name)
           if user.hashed_password == encrypt_password(password, user.salt)
              user
           end
        end
    end
    def encrypt_password(password, salt)
      Digest::SHA2.hexdigest(password + "wibble" + salt)
    end
  end

  def password=(password)
    @password = password
    if password.present?
      generate_salt
      self.hashed_password = self.class.encrypt_password(password, salt)
    end
  end

	def encrypt_password(password, salt)
		Digest::SHA2.hexdigest(password + "wibble" + salt)
	end
	
	def generate_salt
	self.salt = self.object_id.to_s + rand.to_s
	end


end
