class EnrollmentModeType < ActiveRecord::Base
  has_many :applicants
end
