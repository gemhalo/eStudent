class AcademicCalendar < ActiveRecord::Base
   has_many :event
  def name
     [start_date.year,end_date.year].join('/')
  end
end
