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
    @admission  = @applicant.admission.create(params[:admission])

    respond_to do |format|
      if @applicant.save
       format.html { redirect_to :controller => 'family_backgrounds', :action => 'new', :applicant_id => @applicant.id }
        
      else
        format.html { render :action => "new",:notice => "There was an error" }
      end
    end
  end
  def edit
    @applicant = Applicant.find(params[:applicant_id])
  end
  def update
    #TODO
  end
  def destroy
    #TODO
  end
end
