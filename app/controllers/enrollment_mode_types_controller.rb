class EnrollmentModeTypesController < ApplicationController
  # GET /enrollment_mode_types
  # GET /enrollment_mode_types.xml
  def index
    @enrollment_mode_types = EnrollmentModeType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @enrollment_mode_types }
    end
  end

  # GET /enrollment_mode_types/1
  # GET /enrollment_mode_types/1.xml
  def show
    @enrollment_mode_type = EnrollmentModeType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @enrollment_mode_type }
    end
  end

  # GET /enrollment_mode_types/new
  # GET /enrollment_mode_types/new.xml
  def new
    @enrollment_mode_type = EnrollmentModeType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @enrollment_mode_type }
    end
  end

  # GET /enrollment_mode_types/1/edit
  def edit
    @enrollment_mode_type = EnrollmentModeType.find(params[:id])
  end

  # POST /enrollment_mode_types
  # POST /enrollment_mode_types.xml
  def create
    @enrollment_mode_type = EnrollmentModeType.new(params[:enrollment_mode_type])

    respond_to do |format|
      if @enrollment_mode_type.save
        format.html { redirect_to(@enrollment_mode_type, :notice => 'Enrollment mode type was successfully created.') }
        format.xml  { render :xml => @enrollment_mode_type, :status => :created, :location => @enrollment_mode_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @enrollment_mode_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /enrollment_mode_types/1
  # PUT /enrollment_mode_types/1.xml
  def update
    @enrollment_mode_type = EnrollmentModeType.find(params[:id])

    respond_to do |format|
      if @enrollment_mode_type.update_attributes(params[:enrollment_mode_type])
        format.html { redirect_to(@enrollment_mode_type, :notice => 'Enrollment mode type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @enrollment_mode_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /enrollment_mode_types/1
  # DELETE /enrollment_mode_types/1.xml
  def destroy
    @enrollment_mode_type = EnrollmentModeType.find(params[:id])
    @enrollment_mode_type.destroy

    respond_to do |format|
      format.html { redirect_to(enrollment_mode_types_url) }
      format.xml  { head :ok }
    end
  end
end
