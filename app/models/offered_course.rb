class OfferedCourse < ActiveRecord::Base
  has_one :academic_year_semester
  belongs_to :curriculum_course
end
