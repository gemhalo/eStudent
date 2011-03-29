class Reference < ActiveRecord::Base
  belongs_to :applicant
  #validates_presence_of :full_name,:mobile_telephone,:profession
end
