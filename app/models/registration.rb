class Registration < ActiveRecord::Base
  has_many :enrollments
  has_many :add_drops
end
