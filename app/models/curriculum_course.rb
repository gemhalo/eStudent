class CurriculumCourse < ActiveRecord::Base
  has_many :courses
  belongs_to :curriculum
  has_many :offered_courses
end
