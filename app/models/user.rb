class User < ActiveRecord::Base
  belongs_to :person
  acts_as_authentic

	ROLES = %w[admin student  guest]
	def role?(base_role)
  		ROLES.index(base_role.to_s) <= ROLES.index(role)
	end
end
