class Student < ActiveRecord::Base
  belongs_to :person
  belongs_to :applicant
  has_one :dormitory
  belongs_to :department

  validates :id_number, :presence => true, :uniqueness => true
  #validates :applicant_id, :presence => true, :uniqueness => true

 include ActiveModel::Serialization
 #attr_accessible :college_name
# def attributes
#   { 'college_name' => @college_name}
# end
end
