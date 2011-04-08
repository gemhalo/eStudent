class CurriculumCourse < ActiveRecord::Base
  validates_presence_of :price
  belongs_to :course
  belongs_to :curriculum
  #has_many :offered_courses
  has_many :academic_year_semester ,:through => :offered_course
  has_many :academic_year_semester,  :through =>:offered_course

#  def curriculumscourse_select
#    [self.curriculum.program_id,self.curriculum.class_year_id, self.curriculum.semester_id].join('-')
#end
   def name
    [ self.course.course_title.capitalize,self.course.course_code.capitalize ].join('-')
  end
end
