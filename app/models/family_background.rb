class FamilyBackground < ActiveRecord::Base
  belongs_to :applicant
  validates_presence_of :father_edu_level, :mother_edu_level
end
