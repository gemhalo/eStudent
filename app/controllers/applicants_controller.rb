class ApplicantsController < ApplicationController
  def new
    @applicant  = Applicant.new
    @ethnicity   = Ethnicity.all
    @nationality = Nationality.all
    @Admissiontype    = AdmissionType.all
    @Enrollementtype  = EnrollementType.all
    @College    = College.all    
    @admission  = @applicant.admission.build
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
    
    @ethnicity   = Ethnicity.all
    @nationality = Nationality.all
    @Admissiontype    = AdmissionType.all
    @Enrollementtype  = EnrollementType.all
    @College    = College.all    
    @applicant = Applicant.create(params[:applicant])
    #@person = Applicant.create(params[:person])
    @admission  = @applicant.admission.create(params[:admission])
    logger.info("----------sss-----#{params[:applicant]}----------")
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
end
