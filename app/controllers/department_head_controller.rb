class DepartmentHeadController < ApplicationController

  
    def index
        if session[:user_role]=="department_head"
          @current_user=session[:user_name]
        dept=User.find(session[:user_id]).person.instructor.department_id
        @applicants=Applicant.all(:include=>:admission, :conditions=>
        ["admissions.major_feild_of_study =#{dept}"])
        end
        
     end

  def show_list
  	dept=User.find(session[:user_id]).person.instructor.department_id
    @applicants=Applicant.all(:include=>:admission, :conditions=>
    ["admissions.major_feild_of_study = #{dept}"])
  end

  def details
    @applicant=Person.find(params[:id])
  end

  def approve
    dept=User.find(session[:user_id]).person.instructor.department_id
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
