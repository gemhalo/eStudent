class OfferedCoursesController < ApplicationController
  # GET /offered_courses
  # GET /offered_courses.xml
  def index
    @offered_courses = OfferedCourse.all
    @curriculum_courses = CurriculumCourse.all
    @academic_year_semester = AcademicYearSemester.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @offered_courses }
    end
  end

  # GET /offered_courses/1
  # GET /offered_courses/1.xml
  def show
    @offered_course = OfferedCourse.find(params[:id])
    @curriculum_courses = CurriculumCourse.all
    @academic_year_semester = AcademicYearSemester.all
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @offered_course }
    end
  end

  # GET /offered_courses/new
  # GET /offered_courses/new.xml
  def new
    @offered_course = OfferedCourse.new
    @curriculum_courses = CurriculumCourse.all
    @academic_year_semester = AcademicYearSemester.all
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @offered_course }
    end
  end

  # GET /offered_courses/1/edit
  def edit
    @offered_course = OfferedCourse.find(params[:id])
    @curriculum_courses = CurriculumCourse.all
    @academic_year_semester = AcademicYearSemester.all
  end

  # POST /offered_courses
  # POST /offered_courses.xml
  def create
    @offered_course = OfferedCourse.new(params[:offered_course])
    @curriculum_courses = CurriculumCourse.all
    @academic_year_semester = AcademicYearSemester.all
    respond_to do |format|
      if @offered_course.save
        format.html { redirect_to(@offered_course, :notice => 'Offered course was successfully created.') }
        format.xml  { render :xml => @offered_course, :status => :created, :location => @offered_course }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @offered_course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /offered_courses/1
  # PUT /offered_courses/1.xml
  def update
    @offered_course = OfferedCourse.find(params[:id])
    @curriculum_courses = CurriculumCourse.all
    @academic_year_semester = AcademicYearSemester.all
    respond_to do |format|
      if @offered_course.update_attributes(params[:offered_course])
        format.html { redirect_to(@offered_course, :notice => 'Offered course was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @offered_course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /offered_courses/1
  # DELETE /offered_courses/1.xml
  def destroy
    @offered_course = OfferedCourse.find(params[:id])
    @curriculum_courses = CurriculumCourse.all
    @academic_year_semester = AcademicYearSemester.all
    @offered_course.destroy

    respond_to do |format|
      format.html { redirect_to(offered_courses_url) }
      format.xml  { head :ok }
    end
  end
end
