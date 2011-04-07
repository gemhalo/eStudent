class Registration < ActiveRecord::Base
  has_many :offered_course, :through => :enrollment
end
