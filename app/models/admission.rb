class Admission < ActiveRecord::Base
  belongs_to :applicant
  belongs_to :admission_type
  belongs_to :enrollement_type
  belongs_to :enrollment_mode_type


def admission_name

  [admission_type.name.capitalize ,'-',enrollement_type.name.capitalize].join(' ')

end

end
