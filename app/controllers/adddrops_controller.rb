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
  end

  def notification
  end

  def course_add_request_list
    @add_requests=AddDrop.course_add_requests
  end

  def approve_add
    @add=AddDrop.find(params[:id])
    @add.add_drop_status=true
    Enrollment.create!(:registration_id=>@add.registration_id,
                      :offered_course_id=>@add.offered_course_id,
                      :add_drop_status=>"added"
    )
    render :action=>"notification"
  end

  def decline_add
    @add=AddDrop.find(params[:id])
    @add.add_drop_status=false
    render :action=>"notification"
  end

  def course_drop_request_list
    @drop_requests=AddDrop.course_drop_requests
  end

  def approve_drop
    @drop=AddDrop.find(params[:id])
    @drop.add_drop_status=true
    @enrollment=@drop.registration.enrollments.where("offered_course_id=?",@drop.offered_course_id)
    @enrollment.add_drop_status="dropped"
    render :action=>"notification"
  end

  def decline_drop
    @drop=AddDrop.find(params[:id])
    @drop.add_drop_status=false
    render :action=>"notification"
  end

end
