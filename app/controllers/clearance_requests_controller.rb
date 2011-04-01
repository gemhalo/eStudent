class ClearanceRequestsController < ApplicationController
  # GET /clearance_requests
  # GET /clearance_requests.xml
  def index
    @clearance_requests = ClearanceRequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clearance_requests }
    end
  end

  # GET /clearance_requests/1
  # GET /clearance_requests/1.xml
  def show
    @clearance_request = ClearanceRequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @clearance_request }
    end
  end

  # GET /clearance_requests/new
  # GET /clearance_requests/new.xml
  def new
    @clearance_request = ClearanceRequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @clearance_request }
    end
  end

  # GET /clearance_requests/1/edit
  def edit
    @clearance_request = ClearanceRequest.find(params[:id])
  end

  # POST /clearance_requests
  # POST /clearance_requests.xml
  def create
    @clearance_request = ClearanceRequest.new(params[:clearance_request])

    respond_to do |format|
      if @clearance_request.save
        format.html { redirect_to(@clearance_request, :notice => 'Clearance request was successfully created.') }
        format.xml  { render :xml => @clearance_request, :status => :created, :location => @clearance_request }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @clearance_request.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clearance_requests/1
  # PUT /clearance_requests/1.xml
  def update
    @clearance_request = ClearanceRequest.find(params[:id])

    respond_to do |format|
      if @clearance_request.update_attributes(params[:clearance_request])
        format.html { redirect_to(@clearance_request, :notice => 'Clearance request was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @clearance_request.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clearance_requests/1
  # DELETE /clearance_requests/1.xml
  def destroy
    @clearance_request = ClearanceRequest.find(params[:id])
    @clearance_request.destroy

    respond_to do |format|
      format.html { redirect_to(clearance_requests_url) }
      format.xml  { head :ok }
    end
  end
end
