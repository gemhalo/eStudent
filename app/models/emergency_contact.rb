class EmergencyContact < ActiveRecord::Base
  belongs_to :applicant
  validates_presence_of :full_name,:relationship
   
end
