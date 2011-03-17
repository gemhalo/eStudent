class EmergencyContactsController < ApplicationController
  # GET /emergency_contacts
  # GET /emergency_contacts.xml
  def index
    @emergency_contacts = EmergencyContact.find_all_by_applicant_id(params[:applicant_id])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @emergency_contacts }
    end
  end

  # GET /emergency_contacts/1
  # GET /emergency_contacts/1.xml
  def show
    @emergency_contact = EmergencyContact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @emergency_contact }
    end
  end

  # GET /emergency_contacts/new
  # GET /emergency_contacts/new.xml
  def new

    @applicantid = params[:applicant_id]
    #@emergency_contacts = EmergencyContact.find_all_by_applicant_id(params[:applicant_id])
    #@emergency_contacts = [ EmergencyContact.find(1) ]
    @emergency_contact = EmergencyContact.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @emergency_contact }
    end
  end

  # GET /emergency_contacts/1/edit
  def edit
    @applicantid = params[:applicant_id]
    @emergency_contact = EmergencyContact.find(params[:id])
    @emergency_contacts = EmergencyContact.find_all_by_applicant_id(params[:applicant_id])
   
  end

  # POST /emergency_contacts
  # POST /emergency_contacts.xml
  def create
     @emergency_contact = EmergencyContact.new(params[:emergency_contact])
      respond_to do |format|

      if @emergency_contact.save
        logger.info("---------session----------#{session["@applicantid"]}")
        
          format.html { redirect_to :controller => 'emergency_contacts', :action => 'new', :applicant_id => @emergency_contact.applicant_id }

    
      else
          render :action => "new", :applicant_id => 27 
        #format.html { render :action => "new" }
        format.xml  { render :xml => @emergency_contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /emergency_contacts/1
  # PUT /emergency_contacts/1.xml
  def update

    @applicantid= params[:applicantid]
    @emergency_contact = EmergencyContact.find(params[:id])

    respond_to do |format|
      if @emergency_contact.update_attributes(params[:emergency_contact])
          @emergency_contacts = EmergencyContact.find_all_by_applicant_id(params[:applicantid])
          format.html { render :action => "new" }
       # format.html { redirect_to(@emergency_contact, :notice => 'Emergency Contact was successfully updated.') }
        format.xml  { head :ok }

      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @emergency_contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /emergency_contacts/1
  # DELETE /emergency_contacts/1.xml
  def destroy

    @emergency_contact = EmergencyContact.find(params[:id])

    @emergency_contact.destroy

    respond_to do |format|
      @emergency_contacts = EmergencyContact.find_all_by_applicant_id(params[:applicantid])
      format.html { render :action => "new"}
      format.xml  { head :ok }
    end
  end
end
