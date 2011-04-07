class ClassYear < ActiveRecord::Base
  has_one :curriculum
  has_many :registrations
end
