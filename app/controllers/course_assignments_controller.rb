class CourseAssignmentsController < ApplicationController
  # GET /course_assignments
  # GET /course_assignments.xml
  def index
    @course_assignments = CourseAssignment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @course_assignments }
    end
  end

  # GET /course_assignments/1
  # GET /course_assignments/1.xml
  def show
    @course_assignment = CourseAssignment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @course_assignment }
    end
  end

  # GET /course_assignments/new
  # GET /course_assignments/new.xml
  def new
    @course_assignment = CourseAssignment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @course_assignment }
    end
  end

  # GET /course_assignments/1/edit
  def edit
    @course_assignment = CourseAssignment.find(params[:id])
  end

  # POST /course_assignments
  # POST /course_assignments.xml
  def create
    @course_assignment = CourseAssignment.new(params[:course_assignment])

    respond_to do |format|
      if @course_assignment.save
        format.html { redirect_to(@course_assignment, :notice => 'Course assignment was successfully created.') }
        format.xml  { render :xml => @course_assignment, :status => :created, :location => @course_assignment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @course_assignment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /course_assignments/1
  # PUT /course_assignments/1.xml
  def update
    @course_assignment = CourseAssignment.find(params[:id])

    respond_to do |format|
      if @course_assignment.update_attributes(params[:course_assignment])
        format.html { redirect_to(@course_assignment, :notice => 'Course assignment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @course_assignment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /course_assignments/1
  # DELETE /course_assignments/1.xml
  def destroy
    @course_assignment = CourseAssignment.find(params[:id])
    @course_assignment.destroy

    respond_to do |format|
      format.html { redirect_to(course_assignments_url) }
      format.xml  { head :ok }
    end
  end
end
