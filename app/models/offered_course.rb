class OfferedCourse < ActiveRecord::Base
  belongs_to :academic_year_semester
  belongs_to :curriculum_course
  has_many :registration, :through => :enrollment
end
