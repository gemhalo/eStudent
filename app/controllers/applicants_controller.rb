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
    @applicants = Applicant.all 
  end
  def show
    @applicant= Applicant.find(params[:id])
  end
  def create
    #TODO
    @applicant = Applicant.create(params[:applicant])
  end
  def update
    #TODO
  end
  def destroy
    #TODO
  end
end
