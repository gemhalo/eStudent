class AdmissionApprovalController < ApplicationController
  layout "instructor"
  def index

        #@current_user=session[:user_name]
        #dept=current_user.person.instructor.department_id
        @applicants=Applicant.all(:conditions=>["verified=?",false])
     end

  def show_list
  	#dept=current_user.person.instructor.department_id
    @applicants=Applicant.all(:conditions=>["verified =?", false])
  end

  def details
    @applicant=Person.find(params[:id])
  end

  def approve
    #dept=current_user.person.instructor.department_id
     #   @applicants=Applicant.all(:include=>:admission, :conditions=>
      #  ["admissions.major_feild_of_study =#{dept}"])

    applicant=Applicant.find(params[:id])
    applicant.verified=true
    if applicant.save!
      @applicants=Applicant.all
      flash[:notice]="successfully approved"
      render "show_list"
    end
  end
  def decline
    a=Applicant.find(params[:id])
    a.verified=false
    a.save!
    @applicants=Applicant.all
    render "show_list"
  end
end
