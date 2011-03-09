class Student < ActiveRecord::Base
  belongs_to :person
  has_one :dormitory
  has_many :educational_backgrounds

 include ActiveModel::Serialization
 #attr_accessible :college_name
# def attributes
#   { 'college_name' => @college_name}
# end
end
