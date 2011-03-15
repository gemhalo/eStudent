class WelcomeController < ApplicationController
  layout "application"
  def index
    path = case current_user.role
    when 'instructor'
       instructors_path
      when 'student_service_staff'
        student_service_staffs_path
      else
    end

    redirect_to path     
  end
end

