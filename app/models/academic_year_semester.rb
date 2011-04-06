class AcademicYearSemester < ActiveRecord::Base
has_many :curriculum_course ,:through => :offered_course
end
