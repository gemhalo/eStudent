class StudentServiceStaffsController < ApplicationController
  authorize_resource
  def index
    @applicants = Applicant.not_verified
    @program = Program.all
    @college = College.all
    @verifieds=params[:verify]
    @student_service_staffs = StudentServiceStaff.all
    respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @student_service_staffs }
      end
  end

  def show
    @student_service_staff = StudentServiceStaff.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_service_staff }
    end
  end

  # GET /student_service_staffs/new
  # GET /student_service_staffs/new.xml
  def new
    @student_service_staff = StudentServiceStaff.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_service_staff }
    end
  end

  # GET /student_service_staffs/1/edit
  def edit
    @student_service_staff = StudentServiceStaff.find(params[:id])
  end

  # POST /student_service_staffs
  # POST /student_service_staffs.xml
  def create
    @student_service_staff = StudentServiceStaff.new(params[:student_service_staff])

    respond_to do |format|
      if @student_service_staff.save
        format.html { redirect_to(@student_service_staff, :notice => 'Student service staff was successfully created.') }
        format.xml  { render :xml => @student_service_staff, :status => :created, :location => @student_service_staff }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_service_staff.errors, :status => :unprocessable_entity }
      end
    end
  end
  # PUT /student_service_staffs/1
  # PUT /student_service_staffs/1.xml
  def update
    @student_service_staff = StudentServiceStaff.find(params[:id])

    respond_to do |format|
      if @student_service_staff.update_attributes(params[:student_service_staff])
        format.html { redirect_to(@student_service_staff, :notice => 'Student service staff was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_service_staff.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_service_staffs/1
  # DELETE /student_service_staffs/1.xml
  def destroy
    @student_service_staff = StudentServiceStaff.find(params[:id])
    @student_service_staff.destroy

    respond_to do |format|
      format.html { redirect_to(student_service_staffs_url) }
      format.xml  { head :ok }
    end
  end


  def selector
    @college = College.all
    @admission = Admission.all
    @applicant = Applicant.all
    @verifieds=params[:verify]
    @applicants = Applicant.not_verified

  end
  def selected
    @applicants = Applicant.not_verified
    @college = College.all
    @admission = Admission.all
    @applicant = Applicant.all
    @verifieds=params[:verify]
  end


end

