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

	def encrypt_password(password, salt)
		Digest::SHA2.hexdigest(password + "wibble" + salt)
	end

end
