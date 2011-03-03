class Department < ActiveRecord::Base
  belongs_to :college
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_format_of :email, :with       => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message    => 'email must be valid'
end
