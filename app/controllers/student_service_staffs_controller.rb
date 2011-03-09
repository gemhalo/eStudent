class StudentServiceStaffsController < ApplicationController
  layout 'student'
  # GET /student_service_staffs
  # GET /student_service_staffs.xml
  # POST /student_service_staffs
  def index
    @admission_types = AdmissionType.all
 #   @enrollement_types = EnrollmentType.all
    @verifieds=params[:verify]
    if request[:method] =="GET" 
      @student_service_staffs = StudentServiceStaff.all
      # Apply filters to display students only that this user can approve
      @applicants = Applicant.all
      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @student_service_staffs }
      end
    else 
      @applicants = Applicant.where("verified =#{params[:verified]}")
    end
  end

  # GET /student_service_staffs/1
  # GET /student_service_staffs/1.xml
  def show
    @student_service_staff = StudentServiceStaff.find(params[:id])
#    @gpa = params[:id]
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
  #  @param_value = params[:ne]
    @admission_types = AdmissionType.all
    @verifieds=params[:verify]

  end

end
