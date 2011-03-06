class Student < ActiveRecord::Base
  belongs_to :person
  has_one :dormitory
end
