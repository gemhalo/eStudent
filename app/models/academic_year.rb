class AcademicYear < ActiveRecord::Base
  has_many :academic_year_semester
  has_many :semesters,  :through =>:academic_year_semester

  def year_name
    [ self.academic_year.start_at,self.academic_year.end_at ].join('-')
  end
end
