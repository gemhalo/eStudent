class DormitoriesController < ApplicationController
  # GET /dormitories
  # GET /dormitories.xml
  def index
    @dormitories = Dormitory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dormitories }
    end
  end

  # GET /dormitories/1
  # GET /dormitories/1.xml
  def show
    @dormitory = Dormitory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dormitory }
    end
  end

  # GET /dormitories/new
  # GET /dormitories/new.xml
  def new
    @dormitory = Dormitory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dormitory }
    end
  end

  # GET /dormitories/1/edit
  def edit
    @dormitory = Dormitory.find(params[:id])
  end

  # POST /dormitories
  # POST /dormitories.xml
  def create
    @dormitory = Dormitory.new(params[:dormitory])

    respond_to do |format|
      if @dormitory.save
        format.html { redirect_to(@dormitory, :notice => 'Dormitory was successfully created.') }
        format.xml  { render :xml => @dormitory, :status => :created, :location => @dormitory }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dormitory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dormitories/1
  # PUT /dormitories/1.xml
  def update
    @dormitory = Dormitory.find(params[:id])

    respond_to do |format|
      if @dormitory.update_attributes(params[:dormitory])
        format.html { redirect_to(@dormitory, :notice => 'Dormitory was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dormitory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dormitories/1
  # DELETE /dormitories/1.xml
  def destroy
    @dormitory = Dormitory.find(params[:id])
    @dormitory.destroy

    respond_to do |format|
      format.html { redirect_to(dormitories_url) }
      format.xml  { head :ok }
    end
  end
end
