class ClassYearsController < ApplicationController
  # GET /class_years
  # GET /class_years.xml
  def index
    @class_years = ClassYear.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @class_years }
    end
  end

  # GET /class_years/1
  # GET /class_years/1.xml
  def show
    @class_year = ClassYear.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @class_year }
    end
  end

  # GET /class_years/new
  # GET /class_years/new.xml
  def new
    @class_year = ClassYear.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @class_year }
    end
  end

  # GET /class_years/1/edit
  def edit
    @class_year = ClassYear.find(params[:id])
  end

  # POST /class_years
  # POST /class_years.xml
  def create
    @class_year = ClassYear.new(params[:class_year])

    respond_to do |format|
      if @class_year.save
        format.html { redirect_to(@class_year, :notice => 'Class year was successfully created.') }
        format.xml  { render :xml => @class_year, :status => :created, :location => @class_year }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @class_year.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /class_years/1
  # PUT /class_years/1.xml
  def update
    @class_year = ClassYear.find(params[:id])

    respond_to do |format|
      if @class_year.update_attributes(params[:class_year])
        format.html { redirect_to(@class_year, :notice => 'Class year was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @class_year.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /class_years/1
  # DELETE /class_years/1.xml
  def destroy
    @class_year = ClassYear.find(params[:id])
    @class_year.destroy

    respond_to do |format|
      format.html { redirect_to(class_years_url) }
      format.xml  { head :ok }
    end
  end
end
