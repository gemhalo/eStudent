class AdmissionType < ActiveRecord::Base
has_and_belongs_to_many :enrollment_type
has_many :admissions
end
