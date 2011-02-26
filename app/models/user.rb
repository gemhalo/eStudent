class User < ActiveRecord::Base
  belongs_to :person
  acts_as_authentic

	ROLES = %w[student admin guest]
	def role?(base_role)
  		ROLES.index(base_role.to_s) <= ROLES.index(role)
	end
end
