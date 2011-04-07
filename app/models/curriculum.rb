class Curriculum < ActiveRecord::Base
  #has_many :curriculum_course
  belongs_to :semester
  belongs_to :program
  belongs_to :class_year
  has_many :course,  :through =>:curriculum_course
end



def curriculums_select
  [self.program.name,self.class_year.name, self.semester.name].join('-')
end