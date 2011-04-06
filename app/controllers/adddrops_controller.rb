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

  def approve

  end

end
