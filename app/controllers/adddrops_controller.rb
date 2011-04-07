class AdddropsController < ApplicationController
  def add_drop
   
   
    
  end

  def add
    user = User.find(@current_user)
    course_id = []
   user.person.applicant[0].student[0].program.curriculum.each do |course|
     course_id << course.course_id
   end

     @course = Course.find(course_id)
     #curriculum = Curriculum.all

#@courseoffer = OfferedCourse.select("curriculum_id,course_id from offered_courses left join curriculums on curriculums.id = offered_courses.curriculum_id where curriculums.course_id  =  ",params[:course_id])
 @courseoffer=  OfferedCourse.all
 curriculum_id = []
 @courseoffer.each do |curriculumid|
   curriculum_id << curriculumid.curriculum_id
 end
 logger.info("---------oo-------#{@courseoffer}------")
 @curriculum = Curriculum.where("id = ? and course_id = ?",curriculum_id , params[:course_id])
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

  def notification
  end

  def course_add_request_list
    @add_requests=AddDrop.course_add_requests
  end

  def approve_add
    @add=AddDrop.find(params[:id])
    @add.add_drop_status=true
    @add.save!
    Enrollment.create!(:registration_id=>@add.registration_id,
                      :offered_course_id=>@add.offered_course_id,
                      :add_drop_status=>"added"
    )
    render :action=>"notification"
  end

  def decline_add
    @add=AddDrop.find(params[:id])
    @add.add_drop_status=false
    @add.save!
    render :action=>"notification"
  end

  def course_drop_request_list
    @drop_requests=AddDrop.course_drop_requests
  end

  def approve_drop
    @drop=AddDrop.find(params[:id])
    @drop.add_drop_status=true
    @drop.save!
    @enrollment=@drop.registration.enrollments.where("offered_course_id=?",@drop.offered_course_id).first
    @enrollment.add_drop_status="dropped"
    @enrollment.save!
    render :action=>"notification"
  end

  def decline_drop
    @drop=AddDrop.find(params[:id])
    @drop.add_drop_status=false
    @drop.save!
    render :action=>"notification"
  end

end
