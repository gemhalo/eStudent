class DepartmentChoice < ActiveRecord::Base
   #has_many :department
  belongs_to :department
  belongs_to :applicant
  #validates_presence_of :department_id,:preference

  def self.validate_uniqness_preference(applicantid,preference)
    deps = DepartmentChoice.where("applicant_id = ? and preference = ?",applicantid.to_i,preference.to_i)
    logger.info("------------ss------#{deps}---")
     if deps.size != 0
       return false
     else
       return true
     end
  end
  
end
