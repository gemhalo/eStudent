class OfferedCourse < ActiveRecord::Base
  belongs_to :academic_year_semester
  belongs_to :curriculum_course
  belongs_to :academic_year_semester
  has_many :instructors,  :through =>:assign_instructor
   def name
    [ self.curriculum_course.course.course_title.capitalize,self.curriculum_course.course.course_code.capitalize ].join('-')
  end

  def academicyear
    [ self.academic_year_semester.academic_year.year, "Semester", self.academic_year_semester.semester.name].join('-')
  end

end
