class AcademicAndProfessionalQualificationsController < ApplicationController
  # GET /academic_and_professional_qualifications
  # GET /academic_and_professional_qualifications.xml
  def index
    @academic_and_professional_qualifications = AcademicAndProfessionalQualification.find_all_by_applicant_id(params[:applicant_id])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @academic_and_professional_qualifications }
    end
  end

  # GET /academic_and_professional_qualifications/1
  # GET /academic_and_professional_qualifications/1.xml
  def show
    @academic_and_professional_qualification = AcademicAndProfessionalQualification.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @academic_and_professional_qualification }
    end
  end

  # GET /academic_and_professional_qualifications/new
  # GET /academic_and_professional_qualifications/new.xml
  def new
     @applicantid = params[:applicant_id]
     @academic_and_professional_qualifications = AcademicAndProfessionalQualification.find_all_by_applicant_id(params[:applicant_id])
    @academic_and_professional_qualification = AcademicAndProfessionalQualification.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @academic_and_professional_qualification }
    end
  end

  # GET /academic_and_professional_qualifications/1/edit
  def edit

    @applicantid = params[:applicant_id]
     @academic_and_professional_qualifications = AcademicAndProfessionalQualification.find_all_by_applicant_id(params[:applicant_id])
     @academic_and_professional_qualification = AcademicAndProfessionalQualification.find(params[:id])
  end

  # POST /academic_and_professional_qualifications
  # POST /academic_and_professional_qualifications.xml
  def create
    
    flash["@applicantid"] = params[:applicant_id]
     @academic_and_professional_qualification = AcademicAndProfessionalQualification.new(params[:academic_and_professional_qualification])
      respond_to do |format|

      if @academic_and_professional_qualification.save
     
        @academic_and_professional_qualifications = AcademicAndProfessionalQualification.find_all_by_applicant_id(@applicantid)
          format.html { redirect_to :controller => 'academic_and_professional_qualifications', :action => 'new', :applicant_id => @academic_and_professional_qualification.applicant_id }

      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @academic_and_professional_qualification.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /academic_and_professional_qualifications/1
  # PUT /academic_and_professional_qualifications/1.xml
  def update
    @academic_and_professional_qualification = AcademicAndProfessionalQualification.find(params[:id])

    respond_to do |format|
      if @academic_and_professional_qualification.update_attributes(params[:academic_and_professional_qualification])
        @academic_and_professional_qualifications = AcademicAndProfessionalQualification.find_all_by_applicant_id(params[:applicant_id])
        format.html { redirect_to(@academic_and_professional_qualification, :notice => 'Academic and professional qualification was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @academic_and_professional_qualification.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /academic_and_professional_qualifications/1
  # DELETE /academic_and_professional_qualifications/1.xml
  def destroy
    @academic_and_professional_qualification = AcademicAndProfessionalQualification.find(params[:id])
    @academic_and_professional_qualification.destroy

    respond_to do |format|
      @academic_and_professional_qualifications = AcademicAndProfessionalQualification.find_all_by_applicant_id(params[:applicant_id])
      format.html { render :action => "new" }
      format.xml  { head :ok }
    end
  end
end
