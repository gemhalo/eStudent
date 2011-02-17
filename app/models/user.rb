class User < ActiveRecord::Base
  validates :username,  :presence => true, :uniqueness => true
  validates :email,     :presence => true, :uniqueness => true

  #, :email_format => true

  acts_as_authentic do |c|
    c.login_field = :username          # username is the login field
    c. validate_login_field = false # There is no login field, so don't validate it
  end
end

