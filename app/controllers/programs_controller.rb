class ProgramsController < ApplicationController
  layout "student_service_staff"
  # GET /programs
  # GET /programs.xml
  def index
    @programs = Program.all
    @department = Department.all
  @admission = Admission.all
  @awardtype = AwardType.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @programs }
    end
  end

  # GET /programs/1
  # GET /programs/1.xml
  def show
    @program = Program.find(params[:id])
  @department = Department.all
  @admission = Admission.all
  @awardtype = AwardType.all

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @program }
    end
  end

  # GET /programs/new
  # GET /programs/new.xml
  def new
    @program = Program.new
   @department = Department.all
  @admission = Admission.all
  @awardtype = AwardType.all
    #@enrollement_types= EnrollementType.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @program }
    end
  end

  # GET /programs/1/edit
  def edit
    @program = Program.find(params[:id])
   @department = Department.all
  @admission = Admission.all
  @awardtype = AwardType.all
  end

  # POST /programs
  # POST /programs.xml
  def create
    @program = Program.new(params[:program])
    @department = Department.all
  @admission = Admission.all
  @awardtype = AwardType.all

    respond_to do |format|
      if @program.save
        format.html { redirect_to(@program, :notice => 'Program was successfully created.') }
        format.xml  { render :xml => @program, :status => :created, :location => @program }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @program.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /programs/1
  # PUT /programs/1.xml
  def update
    @program = Program.find(params[:id])
   # @enrollement_types= EnrollementType.all

    respond_to do |format|
      if @program.update_attributes(params[:program])
        format.html { redirect_to(@program, :notice => 'Program was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @program.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /programs/1
  # DELETE /programs/1.xml
  def destroy
    @program = Program.find(params[:id])
  # @enrollement_types= EnrollementType.all
    @program.destroy

    respond_to do |format|
      format.html { redirect_to(programs_url) }
      format.xml  { head :ok }
    end
  end
end
