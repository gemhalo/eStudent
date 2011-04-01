class Department < ActiveRecord::Base

  has_many :courses
  belongs_to :college
  has_many :students
  has_one :department_quota
  has_many  :instructors
  validates_presence_of :name
  validates_uniqueness_of :name
  #validates_length_of :telephone, :is => 10, :message => 'must be 10 digits, excluding special characters such as spaces and dashes. No extension or country code allowed.', :if => Proc.new{|o| !o.telephone.blank?}
  #belongs_to :department_choice
  has_many :department_choice
end
