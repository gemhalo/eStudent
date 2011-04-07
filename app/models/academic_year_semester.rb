class AcademicYearSemester < ActiveRecord::Base
  #belongs_to :offered_course
  has_many :curriculum_course,  :through =>:offered_course
end
