 class Applicant < ActiveRecord::Base
  belongs_to :person
  belongs_to :admission
  belongs_to :admission_status_type
  belongs_to :enrollment_mode_type
  belongs_to :college
  has_one  :student
  has_many :family_background
  has_many :emergency_contacts
  has_many :department_choices
  has_many :employment_information

  has_many :course_exemption
  has_many :financial_support
  has_many :reference
  has_many :relevant_publication
  has_many :research_and_teaching_experience
  has_many :academic_and_professional_qualification
  has_many :educational_backgrounds
  #after_initialize :init_person
  #after_save :save_person
 accepts_nested_attributes_for :person

  #validates :person_id, :uniqueness => true
  scope :not_approved, self.where('admission_status = ? and verified = ?', "f", "t")
  scope :not_verified, self.where('verified = ?', "f")

  scope :disabled_undergraduate_regular_applicants, joins(:person, :educational_backgrounds, :admission=>[:admission_type, :enrollment_type])
  .where("admission_types.name like ? and enrollment_types.name like ? and people.disability=?", 'undergraduate','regular', true)
  .order("educational_backgrounds.result desc")

   scope :female_undergraduate_regular_applicants, joins(:person, :educational_backgrounds, :admission=>[:admission_type, :enrollment_type])
  .where("admission_types.name like ? and enrollment_types.name like ? and people.disability=? and people.gender=?",
   'undergraduate','regular', false,'F')
  .order("educational_backgrounds.result desc")

   scope :male_undergraduate_regular_applicants, joins(:person, :educational_backgrounds, :admission=>[:admission_type, :enrollment_type])
  .where("admission_types.name like ? and enrollment_types.name like ? and people.disability=? and people.gender=?",
   'undergraduate','regular', false,'M')
  .order("educational_backgrounds.result desc")


  attr_accessor :name, :father_name

  def full_name
    self.person.full_name
  end
  def name
    self.person.name
  end
 # def father_name
  #  self.person.father_name
  #end
  def grand_father_name
    self.person.grand_father_name
  end
  def person_attributes=(person_attributes)
    logger.info("----------sss-----#{person_attributes}----------")
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
def init_college
    if(self.college_id.nil?)
      self.college = College.new
    end
  end


end

