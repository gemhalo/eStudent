class Applicant < ActiveRecord::Base
  has_one :admission
  belongs_to :person
end
