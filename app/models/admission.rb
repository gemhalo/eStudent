class Admission < ActiveRecord::Base
has_many :programs
belongs_to :enrollment_type
belongs_to :admission_type

  belongs_to :applicant
  
def admission_name

  [admission_type.name.capitalize].join(' ')

end
end
