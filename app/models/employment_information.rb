class EmploymentInformation < ActiveRecord::Base
  belongs_to :applicant
  validates_presence_of :job_type, :employer_name, :employer_telephone
end
