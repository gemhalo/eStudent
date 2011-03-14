class HowTosController < ApplicationController
#`layout "student_service_staff"
  # GET /how_tos
  # GET /how_tos.xml
  def index
    @how_tos = HowTo.all

    respond_to do |format|
      format.html # showpage.html.erb
      format.xml  { render :xml => @how_tos }
    end
  end
def showpage
    @how_tos = HowTo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @how_tos }
    end
  end

  # GET /how_tos/1
  # GET /how_tos/1.xml
  def show
    @how_to = HowTo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @how_to }
    end
  end

  # GET /how_tos/new
  # GET /how_tos/new.xml
  def new
    @how_to = HowTo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @how_to }
    end
  end

  # GET /how_tos/1/edit
  def edit
    @how_to = HowTo.find(params[:id])
  end

  # POST /how_tos
  # POST /how_tos.xml
  def create
    @how_to = HowTo.new(params[:how_to])

    respond_to do |format|
      if @how_to.save
        format.html { redirect_to(@how_to, :notice => 'How to was successfully created.') }
        format.xml  { render :xml => @how_to, :status => :created, :location => @how_to }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @how_to.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /how_tos/1
  # PUT /how_tos/1.xml
  def update
    @how_to = HowTo.find(params[:id])

    respond_to do |format|
      if @how_to.update_attributes(params[:how_to])
        format.html { redirect_to(@how_to, :notice => 'How to was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @how_to.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /how_tos/1
  # DELETE /how_tos/1.xml
  def destroy
    @how_to = HowTo.find(params[:id])
    @how_to.destroy

    respond_to do |format|
      format.html { redirect_to(how_tos_url) }
      format.xml  { head :ok }
    end
  end
end
