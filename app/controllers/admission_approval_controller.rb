class AdmissionApprovalController < ApplicationController
  layout "instructor"
  def index

        #@current_user=session[:user_name]
        #dept=current_user.person.instructor.department_id
        @applicants=Applicant.all(:conditions=>["verified=?",false])
     end

  def show_list
  	#dept=current_user.person.instructor.department_id
    @applicants=Applicant.all(:conditions=>["verified=?", false])
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
    appliant.build_student
    
    if applicant.save!
      if applicant.admission.admission_type.name=="undergradute" and applicant.admission.enrollment_type.name="regular"
        applicant.student.id_number=applicant.temp_id_number
      else
        assign_id(applicant)
      end
      
      @applicants=Applicant.all
#      flash[:notice]="successfully approved"
      render "show_list"
    end
  end

  def assign_id(applicant)

    college=applicant.college.name
    collegename=college[college.index("(")+1..college.index(")")-1].upcase
    program=applicant.admission.program_type.name[0].upcase
    enrollment=applicant.admission.enrollment_type.name[0].upcase
    date=Date.today
    seqno=applicant.id.to_s
    while(seqno.length < 4)
      seqno="0" << "#{seqno}"
    end
    if (date.month==1..8 or(date.month==9 and date.day<11))
      ethiopian_year=date.year - 8
    else
      ethiopian_year=date.year - 7
    end
    idnumber="#{collegename}" << "/" << "#{program}" << "#{enrollment}" << "#{seqno}" << "/" << "#{ethiopian_year}"
    applicant.student.id_number=idnumber
    applicant.student.save!
    
  end

  def decline
    a=Applicant.find(params[:id])
    a.admission_status=false
    a.save!
    @applicants=Applicant.all
    render "show_list"
  end
end
