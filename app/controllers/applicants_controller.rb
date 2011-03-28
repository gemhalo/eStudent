class ApplicantsController < ApplicationController
  layout "student"
  # GET /applicants
  # GET /applicants.xml
  def index
    @applicants = Applicant.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @applicants }
    end
  end

  # GET /applicants/1
  # GET /applicants/1.xml
  def show
    @applicant = Applicant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @applicant }
    end
  end

  # GET /applicants/new
  # GET /applicants/new.xml
  def new
    @person = Person.new
    @applicant = @person.applicant.build
    #@applicant = Applicant.new
    @ethnicity   = Ethnicity.all
    @nationality = Nationality.all
    @Admission = Admission.all
    @College = College.all
    @admission_status_types = AdmissionStatusType.all
if @current_user.person_id.nil?


    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @applicant }
    end
else
  @applicant = @current_user.person.applicant
  redirect_to :controller => "applicants", :action => "edit", :id => @applicant
  end
  end
  # GET /applicants/1/edit
  def edit
    @applicant = Applicant.find(params[:id])
  end

  # POST /applicants
  # POST /applicants.xml
  def create

    @nationality = Nationality.all
    @Admissiontype    = AdmissionType.all
    @Enrollmenttype  = EnrollmentType.all
    @College    = College.all
    @admission_status_types = AdmissionStatusType.all
    @person = Person.create(params[:person])
    @applicant = @person.applicant.create(params[:applicant])
      #Applicant.new(params[:applicant])


    respond_to do |format|
      if @applicant.save!
        format.html { redirect_to :controller => 'family_backgrounds', :action => 'new', :applicant_id => @applicant.id}

     else
        format.html { render :action => "new" }
        format.xml  { render :xml => @applicant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /applicants/1
  # PUT /applicants/1.xml
  def update
    @applicant = Applicant.find(params[:id])

    respond_to do |format|
      if @applicant.update_attributes(params[:applicant])
        format.html { redirect_to(@applicant, :notice => 'Applicant was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @applicant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /applicants/1
  # DELETE /applicants/1.xml
  def destroy
    @applicant = Applicant.find(params[:id])
    @applicant.destroy

    respond_to do |format|
      format.html { redirect_to(applicants_url) }
      format.xml  { head :ok }
    end
  end
end

