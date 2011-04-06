class Student < ActiveRecord::Base
  belongs_to :applicant
  has_one :dormitory
  belongs_to :department

  validates :id_number, :presence => true, :uniqueness => true
  validates :applicant_id, :presence => true, :uniqueness => true

end

