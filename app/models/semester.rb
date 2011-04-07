class Semester < ActiveRecord::Base
  has_one :curriculum
  has_many :academic_year,  :through =>:academic_year_semester
end
