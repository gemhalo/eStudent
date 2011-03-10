class AdmissionStatusTypesController < ApplicationController
  # GET /admission_status_types
  # GET /admission_status_types.xml
  def index
    @admission_status_types = AdmissionStatusType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admission_status_types }
    end
  end

  # GET /admission_status_types/1
  # GET /admission_status_types/1.xml
  def show
    @admission_status_type = AdmissionStatusType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admission_status_type }
    end
  end

  # GET /admission_status_types/new
  # GET /admission_status_types/new.xml
  def new
    @admission_status_type = AdmissionStatusType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admission_status_type }
    end
  end

  # GET /admission_status_types/1/edit
  def edit
    @admission_status_type = AdmissionStatusType.find(params[:id])
  end

  # POST /admission_status_types
  # POST /admission_status_types.xml
  def create
    @admission_status_type = AdmissionStatusType.new(params[:admission_status_type])

    respond_to do |format|
      if @admission_status_type.save
        format.html { redirect_to(@admission_status_type, :notice => 'Admission status type was successfully created.') }
        format.xml  { render :xml => @admission_status_type, :status => :created, :location => @admission_status_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admission_status_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admission_status_types/1
  # PUT /admission_status_types/1.xml
  def update
    @admission_status_type = AdmissionStatusType.find(params[:id])

    respond_to do |format|
      if @admission_status_type.update_attributes(params[:admission_status_type])
        format.html { redirect_to(@admission_status_type, :notice => 'Admission status type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admission_status_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admission_status_types/1
  # DELETE /admission_status_types/1.xml
  def destroy
    @admission_status_type = AdmissionStatusType.find(params[:id])
    @admission_status_type.destroy

    respond_to do |format|
      format.html { redirect_to(admission_status_types_url) }
      format.xml  { head :ok }
    end
  end
end
