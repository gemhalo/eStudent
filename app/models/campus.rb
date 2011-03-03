class Campus < ActiveRecord::Base
  has_many :college
  validates_presence_of :name
end
