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
    self.person.date_of_birth=date_of_birth
  end
  def ethnicity
    self.person.ethnicity
  end
  def ethnicity=(ethnicity)
    init_person if self.new_record?
    self.person.ethnicity=ethnicity
  end
  def father_name
    self.person.father_name
  end
  def father_name=(father_name)
    init_person if self.new_record?
    self.person.father_name=father_name
  end
  def gender
    self.person.gender
  end
  def gender=(gender)
    init_person if self.new_record?
    self.person.gender=gender
  end
  def grand_father_name
    self.person.grand_father_name
  end
  def grand_father_name=(grand_father_name)
    init_person if self.new_record?
    self.person.grand_father_name=grand_father_name
  end
  def marital_status
    self.person.marital_status
  end
  def marital_status=(marital_status)
    init_person if self.new_record?
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
    init_person if self.new_record?
    self.person.name=name
  end
  def nationality
    self.person.nationality
  end
  def nationality=(nationality)
    init_person if self.new_record?
    self.person.nationality=nationality
  end
  def photo
    self.person.photo
  end
  def photo=(photo)
    init_person if self.new_record?
    self.person.photo=photo
  end
  def place_of_birth
    self.person.place_of_birth
  end
  def place_of_birth=(place_of_birth)
    init_person if self.new_record?
    self.person.place_of_birth=place_of_birth
  end

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
    init_person if self.new_record?
    self.person.disability=disability
  end
  def region_code
    self.person.region_code
  end
  def region_code=(region_code)
    init_person if self.new_record?
    self.region_code=region_code
  end
  def type_of_disability
    self.person.type_of_disability
  end
  def type_of_disability=(type_of_disability)
    init_person if self.new_record?
    self.person.type_of_disability
  end

  def full_name
    self.person.full_name
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
end

