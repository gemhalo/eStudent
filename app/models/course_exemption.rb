class CourseExemption < ActiveRecord::Base
  belongs_to :applicants
 # validates_presence_of :course_name, :credit_hour
end
