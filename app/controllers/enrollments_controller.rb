class EnrollmentsController < ApplicationController

  def show
   @offerd_courses =OfferedCourse.all
  end

end
