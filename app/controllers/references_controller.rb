class ReferencesController < ApplicationController
  # GET /references
  # GET /references.xml
  def index
    @references = Reference.find_all_by_applicant_id(params[:applicant_id])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @references }
    end
  end

  # GET /references/1
  # GET /references/1.xml
  def show
    @reference = Reference.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @reference }
    end
  end

  # GET /references/new
  # GET /references/new.xml
  def new
    @applicantid = params[:applicant_id]
    @applicant = Applicant.find(@applicantid)
     @admissionid = @applicant.admission_id
     logger.info("-----ddd-----#{@admissionid}----------")
     @admission = Admission.find(@admissionid)
    @reference = Reference.new



    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @reference }
    end
  end

  # GET /references/1/edit
  def edit
    @reference = Reference.find(params[:id])
    @references=Reference.find_all_by_applicant_id(params[:applicant_id])
    @reference = Reference.new(params[:reference])
  end

  # POST /references
  # POST /references.xml
  def create
    flash["@applicantid"] = params[:applicant_id]
     @reference = Reference.new(params[:reference])
      respond_to do |format|

      if @reference.save
        
        @references = Reference.find_all_by_applicant_id(@applicantid)
          format.html { redirect_to :controller => 'references', :action => 'new', :applicant_id => @reference.applicant_id }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @reference.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /references/1
  # PUT /references/1.xml
  def update
    @reference = Reference.find(params[:id])

    respond_to do |format|
      if @reference.update_attributes(params[:reference])
         @references = Reference.find_all_by_applicant_id(params[:applicant_id])
        format.html { redirect_to(@reference, :notice => 'Reference was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @reference.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /references/1
  # DELETE /references/1.xml
  def destroy
    @reference = Reference.find(params[:id])
    @reference.destroy

    respond_to do |format|
      @references = Reference.find_all_by_applicant_id(params[:applicant_id])
      format.html { redirect_to(references_url) }
      format.xml  { head :ok }
    end
  end
end
