class Student < ActiveRecord::Base
  belongs_to :applicant
  belongs_to :person
  has_one :dormitory
  has_many :registrations
  belongs_to :department

  validates :id_number, :presence => true, :uniqueness => true
  #validates :applicant_id, :presence => true, :uniqueness => true

  validates :id_number, :presence => true, :uniqueness => true
  validates :applicant_id, :presence => true, :uniqueness => true

end

