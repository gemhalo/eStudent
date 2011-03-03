class Person < ActiveRecord::Base
  has_one :user
  has_one :applicant
  has_one :student_service_staff
  has_one :student
  has_one :instructor  
  validates :name , :presence => true
  validates :father_name,  :presence => true


  def full_name
    def full_name
        [name,father_name,grand_father_name].join(' ')
    end
  end

end
