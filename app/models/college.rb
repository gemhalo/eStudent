class College < ActiveRecord::Base
  belongs_to :campus
  has_many :department 
  validates_presence_of :name
end
