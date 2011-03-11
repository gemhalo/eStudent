class Admission < ActiveRecord::Base
has_many :programs
belongs_to :enrollment_type
belongs_to :admission_type

  belongs_to :applicant
  
def name

  [admission_type.name,enrollment_type.name].join(' ')

end
end
