class CourseExemptionsController < ApplicationController
  # GET /course_exemptions
  # GET /course_exemptions.xml
  def index
    
    @course_exemptions = CourseExemption.find_all_by_applicant_id(params[:applicant_id])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @course_exemptions }
    end
  end

  # GET /course_exemptions/1
  # GET /course_exemptions/1.xml
  def show
    @course_exemption = CourseExemption.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @course_exemption }
    end
  end

  # GET /course_exemptions/new
  # GET /course_exemptions/new.xml
  def new
     @applicantid = params[:applicant_id]
     @admission = Admission.find(@applicantid)
     @course_exemptions = CourseExemption.find_all_by_applicant_id(params[:applicant_id])
     @course_exemption = CourseExemption.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @course_exemption }
    end
  end

  # GET /course_exemptions/1/edit
  def edit
     @applicantid = params[:applicant_id]
    @course_exemption = CourseExemption.find(params[:id])
    @course_exemptions = CourseExemption.find_all_by_applicant_id(params[:applicant_id])
    
  end

  # POST /course_exemptions
  # POST /course_exemptions.xml
  def create

    flash["@applicantid"] = params[:applicant_id]
     @course_exemption = CourseExemption.new(params[:course_exemption])
      respond_to do |format|

      if @course_exemption.save
        
        @course_exemptions = CourseExemption.find_all_by_applicant_id(@applicantid)
        @admission = Admission.find(@course_exemption.applicant_id)
         format.html { redirect_to :controller => 'course_exemptions', :action => 'new', :applicant_id => @course_exemption.applicant_id }
   
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @course_exemption.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /course_exemptions/1
  # PUT /course_exemptions/1.xml
  def update
    @applicantid= params[:applicant_id]
    @course_exemption = CourseExemption.find(params[:id])

    respond_to do |format|
      if @course_exemption.update_attributes(params[:course_exemption])
        @course_exemptions = CourseExemption.find_all_by_applicant_id(params[:applicant_id])
        format.html { redirect_to(@course_exemption, :notice => 'Course exemption was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @course_exemption.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /course_exemptions/1
  # DELETE /course_exemptions/1.xml
  def destroy
    @course_exemption = CourseExemption.find(params[:id])
    @course_exemption.destroy

    respond_to do |format|
      @course_exemptions = CourseExemption.find_all_by_applicant_id(params[:applicant_id])
      format.html { render :action => "new" }
      format.xml  { head :ok }
    end
  end
end
