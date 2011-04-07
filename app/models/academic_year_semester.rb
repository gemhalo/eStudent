class AcademicYearSemester < ActiveRecord::Base
  #belongs_to :offered_course
  has_many :curriculum_course,  :through =>:offered_course
  belongs_to :academic_year
  belongs_to :semester
end

def academicyear
    [ self.academic_year.year, "Semester", self.semester.name].join('-')
end




