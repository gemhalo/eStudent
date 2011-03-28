class AdmissionApprovalController < ApplicationController
  def index
    @menuitems=Menuitem.where("role_id=?",@current_user.role)
        @applicants=Applicant.all(:conditions=>["admission_status=? and verified=?",false,true])
     end

  def show_list
  	#dept=current_user.person.instructor.department_id
    @menuitems=Menuitem.where("role_id=?",@current_user.role)

    @applicants=Applicant.all(:conditions=>["admission_status =? and verified=?", false, true])
  end

  def details
    @applicant=Person.find(params[:id])
  end

  def approve
    #dept=current_user.person.instructor.department_id
     #   @applicants=Applicant.all(:include=>:admission, :conditions=>
      #  ["admissions.major_feild_of_study =#{dept}"])

    applicant=Applicant.find(params[:id])
    applicant.admission_status=true
    if applicant.save!
      @applicants=Applicant.all
#      flash[:notice]="successfully approved"
      render "show_list"
    end
  end
  def decline
    a=Applicant.find(params[:id])
    a.admission_status=false
    a.save!
    @applicants=Applicant.all
    render "show_list"
  end
end
