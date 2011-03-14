class EnrollementType < ActiveRecord::Base
  has_many_and_belongs_to :admission_type
end
