class StudentServiceStaff < ActiveRecord::Base
  belongs_to :person
  attr_accessor :name, :father_name, :grand_father_name,:sex,:birth_date
  after_initialize :init_person
  before_save :save_person
  
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
    self.person.save!
  end
end
