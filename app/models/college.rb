class College < ActiveRecord::Base
  belongs_to  :campus
  belongs_to  :instructor  #College dean
  has_many    :departments
  has_many    :applicants

  validates_presence_of :name
  validates_uniqueness_of :name
 #validates_length_of :college_telephone, :is => 10, :message => 'must be 10 digits, excluding special characters such as spaces and dashes. No extension or country code allowed.', :if => Proc.new{|o| !o.college_telephone.blank?}
 def details
   college_name = name unless name.nil?
   campus_name = campus.name unless campus_id.nil?
   [college_name,campus_name].join(" - ")
 end
end

