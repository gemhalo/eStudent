class College < ActiveRecord::Base
  belongs_to  :campus
  belongs_to  :instructor  #College dean
  has_many    :department
  has_many    :applicants

  validates_presence_of :name
  validates_uniqueness_of :name
 #validates_length_of :college_telephone, :is => 10, :message => 'must be 10 digits, excluding special characters such as spaces and dashes. No extension or country code allowed.', :if => Proc.new{|o| !o.college_telephone.blank?}
 def details
   [name,campus.name].join(" - ")
 end
end

