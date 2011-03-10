class Admission < ActiveRecord::Base
has_many :programs
belongs_to :enrollment_type
belongs_to :admission_type
end
