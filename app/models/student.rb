class Student < ActiveRecord::Base
  belongs_to :person
  belongs_to :applicant
  has_one :dormitory
  belongs_to :department

 include ActiveModel::Serialization
 #attr_accessible :college_name
# def attributes
#   { 'college_name' => @college_name}
# end
end
