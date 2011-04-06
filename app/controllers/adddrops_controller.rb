class AdddropsController < ApplicationController
  def add
     render :partial => 'add'
     
  end

  def drop
     render :partial => 'drop'
    # @enrollment = @current_user.person.applicant.student.registration.last
  end

  def approve
  end

end
