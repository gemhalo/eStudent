class User < ActiveRecord::Base
  belongs_to :person
  acts_as_authentic

	ROLES = %w[admin student  guest instructor student_service_staff]
	def role?(base_role)
  		ROLES.index(base_role.to_s) <= ROLES.index(role)
	end
end

