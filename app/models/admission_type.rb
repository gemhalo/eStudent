class AdmissionType < ActiveRecord::Base
has_and_belongs_to_many :enrollment_type
end
