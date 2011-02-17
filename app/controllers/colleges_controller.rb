class CollegesController < ApplicationController
  # GET /colleges
  # GET /colleges.xml
  def index
    @colleges = College.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @colleges }
    end
  end

  # GET /colleges/1
  # GET /colleges/1.xml
  def show
    @college = College.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @college }
    end
  end

  # GET /colleges/new
  # GET /colleges/new.xml
  def new
    @college = College.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @college }
    end
  end

  # GET /colleges/1/edit
  def edit
    @college = College.find(params[:id])
  end

  # POST /colleges
  # POST /colleges.xml
  def create
    @college = College.new(params[:college])

    respond_to do |format|
      if @college.save
        format.html { redirect_to(@college, :notice => 'College was successfully created.') }
        format.xml  { render :xml => @college, :status => :created, :location => @college }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @college.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /colleges/1
  # PUT /colleges/1.xml
  def update
    @college = College.find(params[:id])

    respond_to do |format|
      if @college.update_attributes(params[:college])
        format.html { redirect_to(@college, :notice => 'College was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @college.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /colleges/1
  # DELETE /colleges/1.xml
  def destroy
    @college = College.find(params[:id])
    @college.destroy

    respond_to do |format|
      format.html { redirect_to(colleges_url) }
      format.xml  { head :ok }
    end
  end
end
