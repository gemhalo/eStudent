class Instructor < ActiveRecord::Base
  belongs_to  :department
  belongs_to  :person
    after_initialize :init_person
    before_save :save_person
    accepts_nested_attributes_for :person


     #TODO:
   # The following code snippets will be replaced/refactored later to remove the need to maintain
   # Person related fields in one location rather than in multiple locations

  def date_of_birth
    self.person.date_of_birth
  end
  def date_of_birth=(date_of_birth)
    (self.person.date_of_birth=date_of_birth) unless self.person.nil?
  end
  def ethnicity
    self.person.ethnicity
  end
  def ethnicity=(ethnicity)
    (self.person.ethnicity=ethnicity) unless self.person.nil?
  end
  def father_name
    self.person.father_name
  end
  def father_name=(father_name)
    (self.person.father_name=father_name) unless self.person.nil?
  end
  def gender
    self.person.gender
  end
  def gender=(gender)
    (self.person.gender=gender) unless self.person.nil?
  end
  def grand_father_name
    self.person.grand_father_name
  end
  def grand_father_name=(grand_father_name)
    (self.person.grand_father_name=grand_father_name) unless self.person.nil?
  end
  def marital_status
    self.person.marital_status
  end
  def marital_status=(marital_status)
    (self.person.marital_status=marital_status) unless self.person.nil?
  end
  def mother_full_name
    self.mother_full_name
  end
  def mother_full_name=(mother_full_name)
    (self.mother_full_name=mother_full_name) unless self.person.nil?
  end
  def name
    self.person.name
  end
  def name=(name)
    (self.person.name=name) unless self.person.nil?
  end
  def nationality
    self.person.nationality.name
  end
  def nationality=(nationality_id)
    (self.person.nationality_id=nationality_id) unless self.person.nil?
  end
  def photo
    self.person.photo
  end
  def photo=(photo)
    (self.person.photo=photo) unless self.person.nil?
  end
  def place_of_birth
    self.person.place_of_birth
  end
  def place_of_birth=(place_of_birth)
    (self.person.place_of_birth=place_of_birth) unless self.person.nil?
  end

  def full_name
    self.person.full_name
  end
  #Additional Methods

#nationality_id
#nationality_id
#photo_content_type
#photo_content_type
#photo_file_name
#photo_file_name
#photo_file_size
#photo_file_size
#def marital_status
#def marital_status
#def mother_full_name
#def mother_full_name
  def disability
    self.person.disability
  end
  def disability=(disability)
    (self.person.disability=disability) unless self.person.nil?
  end
  def region_code
    self.person.region_code
  end
  def region_code=(region_code)
    (self.region_code=region_code) unless self.person.nil?
  end
  def type_of_disability
    self.person.type_of_disability
  end
  def type_of_disability=(type_of_disability)
    (self.person.type_of_disability) unless self.person.nil?
  end
  def has_user_account?
     User.where("person_id =?",self.person_id).count > 0
  end
  def person_attributes=(person_attributes)
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
    def self.full_name_exists?(name,father,grand_father)
        Person.where("name=? and father_name=? and grand_father_name=?",name.capitalize,
          father.capitalize,grand_father.capitalize).count > 0
    end

end

