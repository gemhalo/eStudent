class Department < ActiveRecord::Base
  belongs_to :college
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_format_of :email, :with       => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message    => 'email must be valid'
  validates_length_of :telephone, :is => 10, :message => 'must be 10 digits, excluding special characters such as spaces and dashes. No extension or country code allowed.', :if => Proc.new{|o| !o.telephone.blank?}
end
