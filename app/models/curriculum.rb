class Curriculum < ActiveRecord::Base
  has_many :curriculum_course
  belongs_to :semester
  belongs_to :program
  belongs_to :class_year
end

def curriculums_select
  [self.program.name,"year",self.class_year, "semester", self.semester].join("-")
end