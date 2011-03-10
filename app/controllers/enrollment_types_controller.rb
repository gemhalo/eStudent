class EnrollmentTypesController < ApplicationController
  # GET /enrollment_types
  # GET /enrollment_types.xml
  def index
    @enrollment_types = EnrollmentType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @enrollment_types }
    end
  end

  # GET /enrollment_types/1
  # GET /enrollment_types/1.xml
  def show
    @enrollment_type = EnrollmentType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @enrollment_type }
    end
  end

  # GET /enrollment_types/new
  # GET /enrollment_types/new.xml
  def new
    @enrollment_type = EnrollmentType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @enrollment_type }
    end
  end

  # GET /enrollment_types/1/edit
  def edit
    @enrollment_type = EnrollmentType.find(params[:id])
  end

  # POST /enrollment_types
  # POST /enrollment_types.xml
  def create
    @enrollment_type = EnrollmentType.new(params[:enrollment_type])

    respond_to do |format|
      if @enrollment_type.save
        format.html { redirect_to(@enrollment_type, :notice => 'Enrollment type was successfully created.') }
        format.xml  { render :xml => @enrollment_type, :status => :created, :location => @enrollment_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @enrollment_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /enrollment_types/1
  # PUT /enrollment_types/1.xml
  def update
    @enrollment_type = EnrollmentType.find(params[:id])

    respond_to do |format|
      if @enrollment_type.update_attributes(params[:enrollment_type])
        format.html { redirect_to(@enrollment_type, :notice => 'Enrollment type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @enrollment_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /enrollment_types/1
  # DELETE /enrollment_types/1.xml
  def destroy
    @enrollment_type = EnrollmentType.find(params[:id])
    @enrollment_type.destroy

    respond_to do |format|
      format.html { redirect_to(enrollment_types_url) }
      format.xml  { head :ok }
    end
  end
end
