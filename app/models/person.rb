class Person < ActiveRecord::Base
  has_one :user
  has_one :applicant
  has_one :student_service_staff
  has_one :student
  has_one :instructor
  belongs_to :nationality

  validates :name , :presence => true
  validates :father_name,  :presence => true

  
    def full_name
        [name,father_name,grand_father_name].join(' ')
    end

    def college_name
      self.student.college_name
    end

    def regno
      self.student.educational_backgrounds.first.EHEECE_code
    end
    def result
      self.student.educational_backgrounds.first.EHEECE_result
    end
    def maxresult
      self.student.educational_backgrounds.first.EHEECE_maximum_result
    end
    def school
      self.student.educational_backgrounds.first.school_code
    end
    def random_string(len)
      chars = ("a".."z").to_a + ("A".."Z").to_a + ("0".."9").to_a
      newpass=""
      1.upto(len) {|i| newpass << chars[rand(chars.size-1)]}
      return newpass
    end

end
