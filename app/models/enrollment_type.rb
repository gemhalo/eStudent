class EnrollmentType < ActiveRecord::Base
has_and_belongs_to_many :admission_type
end
