class OfferedCourse < ActiveRecord::Base
  belongs_to :academic_year_semester
  has_many :enrollments
  has_many :add_drops
  belongs_to :curriculum_course
  belongs_to :academic_year_semester
  has_many :instructors,  :through =>:assign_instructor
   def name
    [ self.curriculum_course.course.course_title.capitalize,self.curriculum_course.course.course_code.capitalize ].join('-')
  end
end
