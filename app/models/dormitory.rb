class Dormitory < ActiveRecord::Base
  belongs_to :student
  belongs_to :room

 validates :student_id, :presence => true, :uniqueness => true

end

