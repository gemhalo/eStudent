class Person < ActiveRecord::Base
  has_one :user
  has_one :applicant
  has_one :student_service_staff
  has_one :student
  has_one :instructor
  belongs_to :nationality
  has_many :educational_backgrounds
  #validates :name, :uniqueness => {:scope => [:name, :father_name, :grand_father_name]}
  #validates :name , :presence => true
  #validates :father_name,  :presence => true

  
    def full_name
        [name,father_name,grand_father_name].join(' ')
    end
#
#    def college_name
#      self.student.college_name
#    end

    def eheece_code
      self.applicant.educational_background.first.eheece_code
    end
    def result
      self.applicant.educational_background.first.result
    end
    def out_of
      self.applicant.educational_background.first.out_of
    end
    def school
      self.applicant.educational_background.first.school_code
    end
    def random_string(len)
      chars = ("a".."z").to_a + ("A".."Z").to_a + ("0".."9").to_a
      newpass=""
      1.upto(len) {|i| newpass << chars[rand(chars.size-1)]}
      return newpass
    end
      def username
        (User.where('person_id = ?', self.id)).first.username
      end
      def password
        (User.where('person_id = ?', self.id)).first.temp_password
      end
      def email
        (User.where('person_id = ?', self.id)).first.email
      end
end
