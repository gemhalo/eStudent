class AdddropsController < ApplicationController
  def add
     render :partial => 'add'
     
  end

  def drop
    student_id = @current_user.person.applicant.first.student
    logger.info("-------------#{student_id.inspect}")
    registration_id = (Registration.where("student_id = ?", student_id)).last
    logger.info("rrrrrrrrrrrrrrrrrrrrrrrr-------------#{registration_id.inspect}")
    if registration_id.nil?
      flash[:notice] = "Student is not registered yet and can't drop a course "
    else
      @enrollments = Enrollment.where("registration_id = ?", registration_id)
      logger.info("eeeeeeeeeeeeeeeeeeeeeeee-------------#{@enrollment.inspect}")
      
    end
  end
  def dropped
    e = Enrollment.find(params[:id])
    @add_drop = AddDrop.new
    AddDrop.create!(:registration_id => e.registration_id,
                    :offered_course_id => e.offered_course_id,
                    :request_for => "drop", :add_drop_date => Date.today
                   )
    e.add_drop_status = "request for drop"
    e.save!
    redirect_to :action => "drop"
  end

  def approve
  end

end
