class EnrollementType < ActiveRecord::Base
  has_many :admission
end
