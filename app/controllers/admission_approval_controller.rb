class AdmissionApprovalController < ApplicationController
  def index

        @applicants=Applicant.all(:conditions=>["admission_status=? and verified=?",false,true])
     end

  def show_list
  	#dept=current_user.person.instructor.department_id
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
      if applicant.student.nil?
        applicant.build_student
        applicant.student.applicant_id=applicant.id
      if applicant.admission.admission_type.name=="Undergraduate" and applicant.admission.enrollment_type.name=="Regular"
        #applicant.student.id_number=applicant.temp_id_number
        assign_id(applicant)
      else
        assign_id(applicant)
      end

      applicant.student.save!
    end

      @applicants=Applicant.all
#      flash[:notice]="successfully approved"
      render "show_list"
    end
  end

  def assign_id(applicant)

    college=applicant.college.name
    collegename=college[college.index("(")+1..college.index(")")-1].upcase
    program=applicant.admission.admission_type.name[0].upcase
    enrollment=applicant.admission.enrollment_type.name[0].upcase
    date=Date.today  # will be replaced by academic_year
    seqno=applicant.id.to_s
    while(seqno.length < 4)
      seqno="0" << "#{seqno}"
    end
    if ( (1..8)===date.month or(date.month==9 and date.day<11))
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
