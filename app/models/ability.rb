class Ability
  include CanCan::Ability

  def initialize(user)
  	if user.role? :admin
  		can :manage, :all
    end
    if user.role? :student
  		can :read, :all
      cannot :assign_roles, User
    end
 end

end
