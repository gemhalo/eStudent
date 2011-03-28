class EmploymentInformationsController < ApplicationController
  # GET /employment_informations
  # GET /employment_informations.xml
  def index
    @employment_informations = EmploymentInformation.find_all_by_applicant_id(params[:applicant_id])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @employment_informations }
    end
  end

  # GET /employment_informations/1
  # GET /employment_informations/1.xml
  def show
    @employment_information = EmploymentInformation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @employment_information }
    end
  end

  # GET /employment_informations/new
  # GET /employment_informations/new.xml
  def new
    @applicantid = params[:applicant_id]
     @employment_informations = EmploymentInformation.find_all_by_applicant_id(params[:applicant_id])
    @employment_information = EmploymentInformation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @employment_information }
    end
  end

  # GET /employment_informations/1/edit
  def edit
    @applicantid = params[:applicant_id]
    @employment_information = EmploymentInformation.find(params[:id])
    @employment_informations = EmploymentInformation.find_all_by_applicant_id(params[:applicant_id])
  end

  # POST /employment_informations
  # POST /employment_informations.xml
  def create
  
    flash["@applicantid"] = params[:applicantid]
     @employment_information = EmploymentInformation.new(params[:employment_information])
      respond_to do |format|

      if @employment_information.save
        
        @employment_informations = EmploymentInformation.find_all_by_applicant_id(@applicantid)
          format.html { redirect_to :controller => 'employment_informations', :action => 'new', :applicant_id => @employment_information.applicant_id }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @employment_information.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /employment_informations/1
  # PUT /employment_informations/1.xml
  def update
    @applicantid= params[:applicantid]
    @employment_information = EmploymentInformation.find(params[:id])

    respond_to do |format|
      if @employment_information.update_attributes(params[:employment_information])
        @employment_informations = EmploymentInformation.find_all_by_applicant_id(params[:applicantid])
        format.html { redirect_to(@employment_information, :notice => 'Employment information was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @employment_information.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /employment_informations/1
  # DELETE /employment_informations/1.xml
  def destroy
    @employment_information = EmploymentInformation.find(params[:id])
    @employment_information.destroy

    respond_to do |format|
      @emergency_contacts = EmergencyContact.find_all_by_applicant_id(params[:applicantid])
      format.html { render :action => "new"}
      format.xml  { head :ok }
    end
  end
end
