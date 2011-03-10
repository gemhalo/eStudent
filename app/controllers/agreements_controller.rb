class AgreementsController < ApplicationController
  # GET /agreements
  # GET /agreements.xml
  def index
    @agreements = Agreement.find_all_by_applicant_id(params[:applicant_id])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @agreements }
    end
  end

  # GET /agreements/1
  # GET /agreements/1.xml
  def show
    @agreement = Agreement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @agreement }
    end
  end

  # GET /agreements/new
  # GET /agreements/new.xml
  def new
     @applicantid = params[:applicant_id]
     @agreements = Agreement.find_all_by_applicant_id(params[:applicant_id])
    @agreement = Agreement.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @agreement }
    end
  end

  # GET /agreements/1/edit
  def edit
     @applicantid = params[:applicant_id]
     @agreements = Agreement.find_all_by_applicant_id(params[:applicant_id])
    @agreement = Agreement.find(params[:id])
  end

  # POST /agreements
  # POST /agreements.xml
  def create
      flash["@applicantid"] = params[:applicantid]
     @agreement = Agreement.new(params[:agreement])
      respond_to do |format|

      if @agreement.save

        @agreements = Agreement.find_all_by_applicant_id(@applicantid)
          format.html { redirect_to :controller => 'agreements', :action => 'new', :applicant_id => @agreement.applicant_id }


      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @agreement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /agreements/1
  # PUT /agreements/1.xml
  def update
    @applicantid= params[:applicantid]
    @agreement = Agreement.find(params[:id])

    respond_to do |format|
      if @agreement.update_attributes(params[:agreement])
         @agreements = Agreement.find_all_by_applicant_id(params[:applicantid])
        format.html { redirect_to(@agreement, :notice => 'Agreement was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @agreement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /agreements/1
  # DELETE /agreements/1.xml
  def destroy
    @agreement = Agreement.find(params[:id])
    @agreement.destroy

    respond_to do |format|
      format.html { redirect_to(agreements_url) }
      format.xml  { head :ok }
    end
  end
end
