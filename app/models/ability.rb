class Ability
  include CanCan::Ability

  def initialize(user)
  	if user.role? :admin
  		can :manage, :all
	end
	if user.role? :student
  		cannot :edit, College
      cannot :assign_roles, User
	end
 end

end
