class Registration < ActiveRecord::Base
has_many :add_drops
has_many :enrollments
has_many :offered_course, :through => :enrollments
belongs_to :student
belongs_to :class_year
end
