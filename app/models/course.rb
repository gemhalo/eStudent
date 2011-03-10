class Course < ActiveRecord::Base
has_one :course_type

has_many :program, :through => :curriculum
validates :course_title , :presence =>true
validates :course_code , :presence =>true
validates :credit_hour , :presence =>true
validates :description , :presence =>true
validates_uniqueness_of  :course_code, :course_title , :case_sensitive => false
end

