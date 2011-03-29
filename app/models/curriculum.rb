class Curriculum < ActiveRecord::Base
  belongs_to :course
  belongs_to :program
validates :course_id , :presence =>true
validates :program_id , :presence =>true
validates :course_type , :presence =>true
validates :semester_id , :presence =>true
validates :class_year_id , :presence =>true

  
end
