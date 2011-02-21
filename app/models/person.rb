class Person < ActiveRecord::Base
  has_one :user
  has_one :applicant
  has_one :instructor
  def full_name
    "#{name} #{father_name} #{grand_father_name}"
  end
end
