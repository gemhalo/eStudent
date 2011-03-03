class ApplicantsController < ApplicationController
  def new
    @applicant        = Applicant.new
    @ethnicity        = Ethnicity.all
    @nationality      = Nationality.all
    @Admissiontype    = AdmissionType.all
    @Enrollementtype  = EnrollementType.all
    @College          = College.all
    @admission        = @applicant.admission.build
  end
  def index
    @ethnicity   = Ethnicity.all
    @nationality = Nationality.all
    @Admissiontype    = AdmissionType.all
    @Enrollementtype  = EnrollementType.all
    @College    = College.all
    @applicants = Applicant.all

  end
  def show
    @applicant= Applicant.find(params[:id])
  end
  def create

    @ethnicity        = Ethnicity.all
    @nationality      = Nationality.all
    @Admissiontype    = AdmissionType.all
    @Enrollementtype  = EnrollementType.all
    @College          = College.all
    @applicant        = Applicant.create(params[:applicant])
    @admission        = @applicant.admission.create(params[:admission])

    respond_to do |format|
      if @applicant.save
        format.html { redirect_to(new_family_background_path,:applicant_id => @applicant.id, :notice => 'College was successfully created.') }

      else
        format.html { render :action => "new",:notice => "There was an error" }
      end
    end
  end
  def update
    #TODO
  end
  def destroy
    #TODO
  end
  def screenApplicant
	@screened_applicant=Apllicant.where("id"=>params(:id))
  end
end

