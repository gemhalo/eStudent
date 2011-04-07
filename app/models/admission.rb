class Admission < ActiveRecord::Base
  has_one :applicant
  belongs_to :admission_type
  #belongs_to :enrollement_type
  belongs_to :enrollment_type
  #belongs_to :enrollment_mode_type
  has_many   :programs

 

  def name
    [ self.admission_type.name.capitalize,self.enrollment_type.name.capitalize ].join('-')
  end
  #accessor methods
  def self.UNDERGRADUATE(param)
    
  end
  
end
