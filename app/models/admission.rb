class Admission < ActiveRecord::Base
has_many :programs
belongs_to :enrollment_type
belongs_to :admission_type
has_many :applicants
  
def name

  [admission_type.name,enrollment_type.name].join(' ')

end
end
