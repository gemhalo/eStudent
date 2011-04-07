class CurriculumCourse < ActiveRecord::Base
  belongs_to :course
  belongs_to :curriculum
  has_many :academic_year_semester,  :through =>:offered_course

   def name
    [ self.course.course_title.capitalize,self.course.course_code.capitalize ].join('-')
  end
end
