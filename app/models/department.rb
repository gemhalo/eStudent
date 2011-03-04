class Department < ActiveRecord::Base
  #belongs_to :department_choice
  has_many :department_choice
end
