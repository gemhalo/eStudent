class Curriculum < ActiveRecord::Base
  
  has_many :course, :through => :curriculum_course
  belongs_to :semester
  belongs_to :program
  belongs_to :class_year

end



def curriculums_select
  [self.program.name,self.class_year.name, self.semester.name].join('-')
end

def admission
  [self.program.admission.admission_type.name,self.program.admission.enrollment_type.name].join("-")

end