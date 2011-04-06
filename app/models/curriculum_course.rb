class CurriculumCourse < ActiveRecord::Base
  belongs_to :course
  belongs_to :curriculum
  #has_many :offered_courses
  has_many :academic_year_semester ,:through => :offered_course
end
