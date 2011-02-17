class Applicant < ActiveRecord::Base
  belongs_to :person
  has_many :admission
  
 
end
