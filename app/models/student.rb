class Student < ActiveRecord::Base
  belongs_to :applicant
  belongs_to :person
  has_one :dormitory
  has_many :registrations
  belongs_to :department
  belongs_to :program
  validates :id_number, :presence => true, :uniqueness => true
  #validates :applicant_id, :presence => true, :uniqueness => true

include ActiveModel::Serialization
 #attr_accessible :college_name
# def attributes
#   { 'college_name' => @college_name}
# end
end
