class ServiceAgreementsController < ApplicationController
  # GET /service_agreements
  # GET /service_agreements.xml
  def index
    @service_agreements = ServiceAgreement.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @service_agreements }
    end
  end

  # GET /service_agreements/1
  # GET /service_agreements/1.xml
  def show
    @service_agreement = ServiceAgreement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @service_agreement }
    end
  end

  # GET /service_agreements/new
  # GET /service_agreements/new.xml
  def new
    @service_agreement = ServiceAgreement.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @service_agreement }
    end
  end

  # GET /service_agreements/1/edit
  def edit
    @service_agreement = ServiceAgreement.find(params[:id])
  end

  # POST /service_agreements
  # POST /service_agreements.xml
  def create
    @service_agreement = ServiceAgreement.new(params[:service_agreement])

    respond_to do |format|
      if @service_agreement.save
        format.html { redirect_to(@service_agreement, :notice => 'Service agreement was successfully created.') }
        format.xml  { render :xml => @service_agreement, :status => :created, :location => @service_agreement }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @service_agreement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /service_agreements/1
  # PUT /service_agreements/1.xml
  def update
    @service_agreement = ServiceAgreement.find(params[:id])

    respond_to do |format|
      if @service_agreement.update_attributes(params[:service_agreement])
        format.html { redirect_to(@service_agreement, :notice => 'Service agreement was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @service_agreement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /service_agreements/1
  # DELETE /service_agreements/1.xml
  def destroy
    @service_agreement = ServiceAgreement.find(params[:id])
    @service_agreement.destroy

    respond_to do |format|
      format.html { redirect_to(service_agreements_url) }
      format.xml  { head :ok }
    end
  end
end
