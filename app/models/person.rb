class Person < ActiveRecord::Base
  has_one :user
  has_one :applicant
  has_one :student_service_staff
  #has_one :student
  has_one :instructor

  belongs_to :nationality
  has_many :educational_backgrounds
  #validates :name, :uniqueness => {:scope => [:name, :father_name, :grand_father_name]}
  validates :name , :presence => true
  validates :father_name,  :presence => true

  has_attached_file :photo,
   :url => "/:class/:attachment/:id/:style_:basename.:extension",
   :default_url => "/:class/:attachment/missing_/:style_default.jpg",
    :styles => {:thumb=> "100x100#", :small => ["70x70>", :jpg] },
    :default_style => :thumb,
    :whiny_thumbnails => true,
   :path => ":rails_root/public/:class/:attachment/:id/:style_:basename.:extension"


    def full_name
        [name,father_name,grand_father_name].join(' ')
    end

    def college_name
      self.applicant.college.name
    end
    def admission_status
      self.applicant.admission_status_type.name
    end
    def enrollment_mode
      self.applicant.enrollment_mode_type.name
    end
   def admission_type
     [self.applicant.admission.admission_type.name, self.applicant.admission.enrollment_type.name].join('-')
   end
    def eheece_code
      self.applicant.educational_backgrounds.first.eheece_code
    end
    def result
      self.applicant.educational_backgrounds.first.result
    end
    def out_of
      self.applicant.educational_backgrounds.first.out_of
    end
    def school
      self.applicant.educational_backgrounds.first.school_code
    end
    ##??
	   def username
        (User.where('person_id = ?', self.id)).first.username
      end
      def password
        (User.where('person_id = ?', self.id)).first.temp_password
      end
      def email
        (User.where('person_id = ?', self.id)).first.email
      end


    def random_string(len)
      #generat a random password consisting of strings and digits
      chars = ("a".."z").to_a + ("A".."Z").to_a + ("0".."9").to_a
      newpass = ""
      1.upto(len) { |i| newpass << chars[rand(chars.size-1)] }
      return newpass
    end

end

