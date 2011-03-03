class Campus < ActiveRecord::Base
  has_many :college
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_format_of     :campus_email,
                          :with       => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                          :message    => 'email must be valid'
end
