class DepartmentHeadController < ApplicationController

  authorize_resource

    def index
        
        #@current_user=session[:user_name]
        dept=current_user.person.instructor.department_id
        @applicants=Applicant.all(:include=>:admission, :conditions=>
        ["admissions.major_feild_of_study =#{dept}"])
        
     end

  def show_list
  	dept=current_user.person.instructor.department_id
    @applicants=Applicant.all(:include=>:admission, :conditions=>
    ["admissions.major_feild_of_study = #{dept}"])
  end

  def details
    @applicant=Person.find(params[:id])
  end

  def approve
    dept=current_user.person.instructor.department_id
        @applicants=Applicant.all(:include=>:admission, :conditions=>
        ["admissions.major_feild_of_study =#{dept}"])
    a=Admission.find(params[:id])
    a.admision_status=1
    if a.save!
      flash[:notice]="successfully approved"
      render "show_list"
    end
  end
  def decline
    a=Admission.find(params[:id])
    a.admision_status=0
    a.save!
  end
end
