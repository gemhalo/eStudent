class CampusesController < ApplicationController
  # GET /campuses
  # GET /campuses.xml
  def index
    @campuses = Campuse.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @campuses }
    end
  end

  # GET /campuses/1
  # GET /campuses/1.xml
  def show
    @campuse = Campuse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @campuse }
    end
  end

  # GET /campuses/new
  # GET /campuses/new.xml
  def new
    @campuse = Campuse.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @campuse }
    end
  end

  # GET /campuses/1/edit
  def edit
    @campuse = Campuse.find(params[:id])
  end

  # POST /campuses
  # POST /campuses.xml
  def create
    @campuse = Campuse.new(params[:campuse])

    respond_to do |format|
      if @campuse.save
        format.html { redirect_to(@campuse, :notice => 'Campuse was successfully created.') }
        format.xml  { render :xml => @campuse, :status => :created, :location => @campuse }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @campuse.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /campuses/1
  # PUT /campuses/1.xml
  def update
    @campuse = Campuse.find(params[:id])

    respond_to do |format|
      if @campuse.update_attributes(params[:campuse])
        format.html { redirect_to(@campuse, :notice => 'Campuse was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @campuse.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /campuses/1
  # DELETE /campuses/1.xml
  def destroy
    @campuse = Campuse.find(params[:id])
    @campuse.destroy

    respond_to do |format|
      format.html { redirect_to(campuses_url) }
      format.xml  { head :ok }
    end
  end
end
