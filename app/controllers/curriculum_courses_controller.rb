class CurriculumCoursesController < ApplicationController
  # GET /curriculum_courses
  # GET /curriculum_courses.xml
  def index
    @curriculum_courses = CurriculumCourse.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @curriculum_courses }
    end
  end

  # GET /curriculum_courses/1
  # GET /curriculum_courses/1.xml
  def show
    @curriculum_course = CurriculumCourse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @curriculum_course }
    end
  end

  # GET /curriculum_courses/new
  # GET /curriculum_courses/new.xml
  def new
    @curriculum_course = CurriculumCourse.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @curriculum_course }
    end
  end

  # GET /curriculum_courses/1/edit
  def edit
    @curriculum_course = CurriculumCourse.find(params[:id])
  end

  # POST /curriculum_courses
  # POST /curriculum_courses.xml
  def create
    @curriculum_course = CurriculumCourse.new(params[:curriculum_course])

    respond_to do |format|
      if @curriculum_course.save
        format.html { redirect_to(@curriculum_course, :notice => 'Curriculum course was successfully created.') }
        format.xml  { render :xml => @curriculum_course, :status => :created, :location => @curriculum_course }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @curriculum_course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /curriculum_courses/1
  # PUT /curriculum_courses/1.xml
  def update
    @curriculum_course = CurriculumCourse.find(params[:id])

    respond_to do |format|
      if @curriculum_course.update_attributes(params[:curriculum_course])
        format.html { redirect_to(@curriculum_course, :notice => 'Curriculum course was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @curriculum_course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /curriculum_courses/1
  # DELETE /curriculum_courses/1.xml
  def destroy
    @curriculum_course = CurriculumCourse.find(params[:id])
    @curriculum_course.destroy

    respond_to do |format|
      format.html { redirect_to(curriculum_courses_url) }
      format.xml  { head :ok }
    end
  end
end
