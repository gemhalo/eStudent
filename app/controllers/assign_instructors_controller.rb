class AssignInstructorsController < ApplicationController
  # GET /assign_instructors
  # GET /assign_instructors.xml
  def index
    @assign_instructors = AssignInstructor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @assign_instructors }
    end
  end

  # GET /assign_instructors/1
  # GET /assign_instructors/1.xml
  def show
    @assign_instructor = AssignInstructor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @assign_instructor }
    end
  end

  # GET /assign_instructors/new
  # GET /assign_instructors/new.xml
  def new
    @assign_instructor = AssignInstructor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @assign_instructor }
    end
  end

  # GET /assign_instructors/1/edit
  def edit
    @assign_instructor = AssignInstructor.find(params[:id])
  end

  # POST /assign_instructors
  # POST /assign_instructors.xml
  def create
    @assign_instructor = AssignInstructor.new(params[:assign_instructor])

    respond_to do |format|
      if @assign_instructor.save
        format.html { redirect_to(@assign_instructor, :notice => 'Assign instructor was successfully created.') }
        format.xml  { render :xml => @assign_instructor, :status => :created, :location => @assign_instructor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @assign_instructor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /assign_instructors/1
  # PUT /assign_instructors/1.xml
  def update
    @assign_instructor = AssignInstructor.find(params[:id])

    respond_to do |format|
      if @assign_instructor.update_attributes(params[:assign_instructor])
        format.html { redirect_to(@assign_instructor, :notice => 'Assign instructor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @assign_instructor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /assign_instructors/1
  # DELETE /assign_instructors/1.xml
  def destroy
    @assign_instructor = AssignInstructor.find(params[:id])
    @assign_instructor.destroy

    respond_to do |format|
      format.html { redirect_to(assign_instructors_url) }
      format.xml  { head :ok }
    end
  end
end
