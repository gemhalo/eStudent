class AcademicCalander < ActiveRecord::Base
 
def name
        [start_date.year,end_date.year].join('/')
    end
end
