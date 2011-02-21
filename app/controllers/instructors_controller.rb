class InstructorsController < ApplicationController
  # GET /instructors
  # GET /instructors.xml
  def index
    @instructors = Instructor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @instructors }
    end
  end

  # GET /instructors/1
  # GET /instructors/1.xml
  def show
    @instructor = Instructor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @instructor }
    end
  end

  # GET /instructors/new
  # GET /instructors/new.xml
  def new
    @instructor = Instructor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @instructor }
    end
  end

  # GET /instructors/1/edit
  def edit
    @instructor = Instructor.find(params[:id])
  end

  # POST /instructors
  # POST /instructors.xml
  def create
    @instructor = Instructor.new(params[:instructor])

    respond_to do |format|
      if @instructor.save
        format.html { redirect_to(@instructor, :notice => 'Instructor was successfully created.') }
        format.xml  { render :xml => @instructor, :status => :created, :location => @instructor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @instructor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /instructors/1
  # PUT /instructors/1.xml
  def update
    @instructor = Instructor.find(params[:id])

    respond_to do |format|
      if @instructor.update_attributes(params[:instructor])
        format.html { redirect_to(@instructor, :notice => 'Instructor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @instructor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /instructors/1
  # DELETE /instructors/1.xml
  def destroy
    @instructor = Instructor.find(params[:id])
    @instructor.destroy

    respond_to do |format|
      format.html { redirect_to(instructors_url) }
      format.xml  { head :ok }
    end
  end
end
