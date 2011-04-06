class OfferedCourse < ActiveRecord::Base
  has_one :academic_year_semester
  belongs_to :curriculum_course
  has_many :add_drops
end
