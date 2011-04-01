class AcademicYearSemestersController < ApplicationController
  # GET /academic_year_semesters
  # GET /academic_year_semesters.xml
  def index
    @academic_year_semesters = AcademicYearSemester.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @academic_year_semesters }
    end
  end

  # GET /academic_year_semesters/1
  # GET /academic_year_semesters/1.xml
  def show
    @academic_year_semester = AcademicYearSemester.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @academic_year_semester }
    end
  end

  # GET /academic_year_semesters/new
  # GET /academic_year_semesters/new.xml
  def new
    @academic_year_semester = AcademicYearSemester.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @academic_year_semester }
    end
  end

  # GET /academic_year_semesters/1/edit
  def edit
    @academic_year_semester = AcademicYearSemester.find(params[:id])
  end

  # POST /academic_year_semesters
  # POST /academic_year_semesters.xml
  def create
    @academic_year_semester = AcademicYearSemester.new(params[:academic_year_semester])

    respond_to do |format|
      if @academic_year_semester.save
        format.html { redirect_to(@academic_year_semester, :notice => 'Academic year semester was successfully created.') }
        format.xml  { render :xml => @academic_year_semester, :status => :created, :location => @academic_year_semester }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @academic_year_semester.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /academic_year_semesters/1
  # PUT /academic_year_semesters/1.xml
  def update
    @academic_year_semester = AcademicYearSemester.find(params[:id])

    respond_to do |format|
      if @academic_year_semester.update_attributes(params[:academic_year_semester])
        format.html { redirect_to(@academic_year_semester, :notice => 'Academic year semester was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @academic_year_semester.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /academic_year_semesters/1
  # DELETE /academic_year_semesters/1.xml
  def destroy
    @academic_year_semester = AcademicYearSemester.find(params[:id])
    @academic_year_semester.destroy

    respond_to do |format|
      format.html { redirect_to(academic_year_semesters_url) }
      format.xml  { head :ok }
    end
  end
end
