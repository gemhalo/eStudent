class User < ActiveRecord::Base
  #include Humanizer
  #require_human_on :create #
  belongs_to :person

  acts_as_authentic

	ROLES = %w[admin student guest instructor student_service_staff]
	def role?(base_role)
  		ROLES.index(base_role.to_s) <= ROLES.index(role)
	end



  def send_password
    new_pass = User.random_string(6)
    self.password = self.password_confirmation = new_pass

    self.save

    Notification.deliver_forgot_password(self.email,self.username,  new_pass)
  end

  def self.random_string(len)
    #generat a random password consisting of strings and digits
    chars = ("a".."z").to_a + ("A".."Z").to_a + ("0".."9").to_a
    newpass = ""
    1.upto(len) { |i| newpass << chars[rand(chars.size-1)] }
    return newpass
  end


   #TODO:
   # The following code snippets will be replaced/refactored later to remove the need to maintain
   # Person related fields in one location rather than in multiple locations
  def date_of_birth
    self.person.date_of_birth
  end
  def date_of_birth=(date_of_birth)
    self.person.date_of_birth=date_of_birth
  end
  def ethnicity
    self.person.ethnicity
  end
  def ethnicity=(ethnicity)
    self.person.ethnicity=ethnicity
  end
  def father_name
    self.person.father_name
  end
  def father_name=(father_name)
    self.person.father_name=father_name
  end
  def gender
    self.person.gender
  end
  def gender=(gender)
    self.person.gender=gender
  end
  def grand_father_name
    self.person.grand_father_name
  end
  def grand_father_name=(grand_father_name)
    self.person.grand_father_name=grand_father_name
  end
  def marital_status
    self.person.marital_status
  end
  def marital_status=(marital_status)
    self.person.marital_status=marital_status
  end
  def mother_full_name
    self.mother_full_name
  end
  def mother_full_name=(mother_full_name)
    self.mother_full_name=mother_full_name
  end
  def name
    self.person.name
  end
  def name=(name)
    self.person.name=name
  end
  def nationality
    self.person.nationality
  end
  def nationality=(nationality)
    self.person.nationality=nationality
  end
  def photo
    self.person.photo
  end
  def photo=(photo)
    self.person.photo=photo
  end
  def place_of_birth
    self.person.place_of_birth
  end
  def place_of_birth=(place_of_birth)
    self.person.place_of_birth=place_of_birth
  end
  def full_name
    self.person.full_name
  end


  def person_attributes=(person_attributes)
    #logger.info("----------sss-----#{person_attributes}----------")
    person_attributes.each do |attributes|
      person.build(attributes)
    end
  end
  #make it private
  private
    def init_person
      self.person = Person.new if self.new_record?     
    end

    def save_person
      self.person.save!
    end


end

