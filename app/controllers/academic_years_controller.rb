class AcademicYearsController < ApplicationController
  # GET /academic_years
  # GET /academic_years.xml
  def index
    @academic_years = AcademicYear.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @academic_years }
    end
  end

  # GET /academic_years/1
  # GET /academic_years/1.xml
  def show
    @academic_year = AcademicYear.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @academic_year }
    end
  end

  # GET /academic_years/new
  # GET /academic_years/new.xml
  def new
    @academic_year = AcademicYear.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @academic_year }
    end
  end

  # GET /academic_years/1/edit
  def edit
    @academic_year = AcademicYear.find(params[:id])
  end

  # POST /academic_years
  # POST /academic_years.xml
  def create
    @academic_year = AcademicYear.new(params[:academic_year])

    respond_to do |format|
      if @academic_year.save
        format.html { redirect_to(@academic_year, :notice => 'Academic year was successfully created.') }
        format.xml  { render :xml => @academic_year, :status => :created, :location => @academic_year }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @academic_year.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /academic_years/1
  # PUT /academic_years/1.xml
  def update
    @academic_year = AcademicYear.find(params[:id])

    respond_to do |format|
      if @academic_year.update_attributes(params[:academic_year])
        format.html { redirect_to(@academic_year, :notice => 'Academic year was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @academic_year.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /academic_years/1
  # DELETE /academic_years/1.xml
  def destroy
    @academic_year = AcademicYear.find(params[:id])
    @academic_year.destroy

    respond_to do |format|
      format.html { redirect_to(academic_years_url) }
      format.xml  { head :ok }
    end
  end
end
