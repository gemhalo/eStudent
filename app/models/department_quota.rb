class DepartmentQuota < ActiveRecord::Base
  belongs_to :department

  def femaleno
    (female_percentage*total_quota)/100.round
  end
end
