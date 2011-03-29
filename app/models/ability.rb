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
    if user.role? :instructor
                can :manage, :instructor
	#	can :read, :all, :except => [Student_service_staff]
		cannot :read, StudentServiceStaff
      cannot :assign_roles, User
    end
    if user.role? :student_service_staff
                can :manage, :all
      cannot :assign_roles, User
    end
 
 end

end
