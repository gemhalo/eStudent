class Enrollment < ActiveRecord::Base
  belongs_to :registration
  belongs_to :offered_course
end
