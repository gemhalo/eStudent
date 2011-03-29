class AwardTypesController < ApplicationController
  # GET /award_types
  # GET /award_types.xml
  def index
    @award_types = AwardType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @award_types }
    end
  end

  # GET /award_types/1
  # GET /award_types/1.xml
  def show
    @award_type = AwardType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @award_type }
    end
  end

  # GET /award_types/new
  # GET /award_types/new.xml
  def new
    @award_type = AwardType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @award_type }
    end
  end

  # GET /award_types/1/edit
  def edit
    @award_type = AwardType.find(params[:id])
  end

  # POST /award_types
  # POST /award_types.xml
  def create
    @award_type = AwardType.new(params[:award_type])

    respond_to do |format|
      if @award_type.save
        format.html { redirect_to(@award_type, :notice => 'Award type was successfully created.') }
        format.xml  { render :xml => @award_type, :status => :created, :location => @award_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @award_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /award_types/1
  # PUT /award_types/1.xml
  def update
    @award_type = AwardType.find(params[:id])

    respond_to do |format|
      if @award_type.update_attributes(params[:award_type])
        format.html { redirect_to(@award_type, :notice => 'Award type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @award_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /award_types/1
  # DELETE /award_types/1.xml
  def destroy
    @award_type = AwardType.find(params[:id])
    @award_type.destroy

    respond_to do |format|
      format.html { redirect_to(award_types_url) }
      format.xml  { head :ok }
    end
  end
end
