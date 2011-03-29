class AcademicCalandersController < ApplicationController
  # GET /academic_calanders
  # GET /academic_calanders.xml
  def index
    @academic_calanders = AcademicCalander.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @academic_calanders }
    end
  end

  # GET /academic_calanders/1
  # GET /academic_calanders/1.xml
  def show
    @academic_calander = AcademicCalander.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @academic_calander }
    end
  end

  # GET /academic_calanders/new
  # GET /academic_calanders/new.xml
  def new
    @academic_calander = AcademicCalander.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @academic_calander }
    end
  end

  # GET /academic_calanders/1/edit
  def edit
    @academic_calander = AcademicCalander.find(params[:id])
  end

  # POST /academic_calanders
  # POST /academic_calanders.xml
  def create
    @academic_calander = AcademicCalander.new(params[:academic_calander])

    respond_to do |format|
      if @academic_calander.save
        format.html { redirect_to(@academic_calander, :notice => 'Academic calander was successfully created.') }
        format.xml  { render :xml => @academic_calander, :status => :created, :location => @academic_calander }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @academic_calander.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /academic_calanders/1
  # PUT /academic_calanders/1.xml
  def update
    @academic_calander = AcademicCalander.find(params[:id])

    respond_to do |format|
      if @academic_calander.update_attributes(params[:academic_calander])
        format.html { redirect_to(@academic_calander, :notice => 'Academic calander was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @academic_calander.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /academic_calanders/1
  # DELETE /academic_calanders/1.xml
  def destroy
    @academic_calander = AcademicCalander.find(params[:id])
    @academic_calander.destroy

    respond_to do |format|
      format.html { redirect_to(academic_calanders_url) }
      format.xml  { head :ok }
    end
  end
end
