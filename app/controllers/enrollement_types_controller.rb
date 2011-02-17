class EnrollementTypesController < ApplicationController
  # GET /enrollement_types
  # GET /enrollement_types.xml
  def index
    @enrollement_types = EnrollementType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @enrollement_types }
    end
  end

  # GET /enrollement_types/1
  # GET /enrollement_types/1.xml
  def show
    @enrollement_type = EnrollementType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @enrollement_type }
    end
  end

  # GET /enrollement_types/new
  # GET /enrollement_types/new.xml
  def new
    @enrollement_type = EnrollementType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @enrollement_type }
    end
  end

  # GET /enrollement_types/1/edit
  def edit
    @enrollement_type = EnrollementType.find(params[:id])
  end

  # POST /enrollement_types
  # POST /enrollement_types.xml
  def create
    @enrollement_type = EnrollementType.new(params[:enrollement_type])

    respond_to do |format|
      if @enrollement_type.save
        format.html { redirect_to(@enrollement_type, :notice => 'Enrollement type was successfully created.') }
        format.xml  { render :xml => @enrollement_type, :status => :created, :location => @enrollement_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @enrollement_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /enrollement_types/1
  # PUT /enrollement_types/1.xml
  def update
    @enrollement_type = EnrollementType.find(params[:id])

    respond_to do |format|
      if @enrollement_type.update_attributes(params[:enrollement_type])
        format.html { redirect_to(@enrollement_type, :notice => 'Enrollement type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @enrollement_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /enrollement_types/1
  # DELETE /enrollement_types/1.xml
  def destroy
    @enrollement_type = EnrollementType.find(params[:id])
    @enrollement_type.destroy

    respond_to do |format|
      format.html { redirect_to(enrollement_types_url) }
      format.xml  { head :ok }
    end
  end
end
