class CourseTypesController < ApplicationController
  # GET /course_types
  # GET /course_types.xml
  def index
    @course_types = CourseType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @course_types }
    end
  end

  # GET /course_types/1
  # GET /course_types/1.xml
  def show
    @course_type = CourseType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @course_type }
    end
  end

  # GET /course_types/new
  # GET /course_types/new.xml
  def new
    @course_type = CourseType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @course_type }
    end
  end

  # GET /course_types/1/edit
  def edit
    @course_type = CourseType.find(params[:id])
  end

  # POST /course_types
  # POST /course_types.xml
  def create
    @course_type = CourseType.new(params[:course_type])

    respond_to do |format|
      if @course_type.save
        format.html { redirect_to(@course_type, :notice => 'Course type was successfully created.') }
        format.xml  { render :xml => @course_type, :status => :created, :location => @course_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @course_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /course_types/1
  # PUT /course_types/1.xml
  def update
    @course_type = CourseType.find(params[:id])

    respond_to do |format|
      if @course_type.update_attributes(params[:course_type])
        format.html { redirect_to(@course_type, :notice => 'Course type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @course_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /course_types/1
  # DELETE /course_types/1.xml
  def destroy
    @course_type = CourseType.find(params[:id])
    @course_type.destroy

    respond_to do |format|
      format.html { redirect_to(course_types_url) }
      format.xml  { head :ok }
    end
  end
end
