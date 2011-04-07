class AssignInstructor < ActiveRecord::Base
  belongs_to :offered_course
  belongs_to :instructor
end
