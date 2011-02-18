class Applicant < ActiveRecord::Base
  belongs_to :person
  has_many :admission
  has_many :family_background
  after_initialize :init_person
  after_save :save_person
  
 

  def full_name
    self.person.full_name
  end
  def name
    self.person.name
  end
  def father_name
    self.person.father_name
  end
  def grand_father_name
    self.person.grand_father_name
  end
  def person_attributes=(person_attributes)
    person_attributes.each do |attributes|
      person.build(attributes)
    end
  end
  #make it private
  private
  def init_person
    if(self.person_id.nil?)
      self.person = Person.new
    end
  end

  def save_person
    self.person.save
  end

  
end
