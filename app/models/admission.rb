class Admission < ActiveRecord::Base
  #belongs_to :applicant
  belongs_to :admission_type
  #belongs_to :enrollement_type
  belongs_to :enrollment_type
  #belongs_to :enrollment_mode_type
  has_many   :programs

  def name
    [ self.admission_type.name.capitalize,self.enrollment_type.name.capitalize ].join('-')
  end

end

