class FinancialSupportsController < ApplicationController
  # GET /financial_supports
  # GET /financial_supports.xml
  def index
    @financial_supports = FinancialSupport.find_all_by_applicant_id(params[:applicant_id])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @financial_supports }
    end
  end

  # GET /financial_supports/1
  # GET /financial_supports/1.xml
  def show
    @financial_support = FinancialSupport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @financial_support }
    end
  end

  # GET /financial_supports/new
  # GET /financial_supports/new.xml
  def new
    @applicantid = params[:applicant_id]
    @applicant = Applicant.find(@applicantid)
    @financial_support = FinancialSupport.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @financial_support }
    end
  end

  # GET /financial_supports/1/edit
  def edit
    @applicantid = params[:applicant_id]
    @financial_support = FinancialSupport.find(params[:id])
    @financial_supports = FinancialSupport.find_all_by_applicant_id(params[:applicant_id])
  end

  # POST /financial_supports
  # POST /financial_supports.xml
  def create
 
     @financial_support = FinancialSupport.new(params[:financial_support])

      respond_to do |format|

      if @financial_support.save

          format.html { redirect_to :controller => 'financial_supports', :action => 'new', :applicant_id => @financial_support.applicant_id }
   
      else

        format.html { redirect_to :controller => 'financial_supports', :action => 'new', :applicant_id => @financial_support.applicant_id }
        format.xml  { render :xml => @financial_support.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /financial_supports/1
  # PUT /financial_supports/1.xml
  def update
    @applicantid= params[:applicant_id]
    @financial_support = FinancialSupport.find(params[:id])

    respond_to do |format|
      if @financial_support.update_attributes(params[:financial_support])
          @financial_supports = FinancialSupport.find_all_by_applicant_id(params[:applicant_id])
        format.html { redirect_to(@financial_support, :notice => 'Financial support was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @financial_support.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /financial_supports/1
  # DELETE /financial_supports/1.xml
  def destroy
    @financial_support = FinancialSupport.find(params[:id])
    @financial_support.destroy

    respond_to do |format|
      @financial_supports = FinancialSupport.find_all_by_applicant_id(params[:applicant_id])
      format.html { render :action => "new" }
      format.xml  { head :ok }
    end
  end
end
