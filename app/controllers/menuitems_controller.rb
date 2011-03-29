class MenuitemsController < ApplicationController
  # GET /menuitems
  # GET /menuitems.xml
 layout "welcome"
  def index
    @menuitems = Menuitem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @menuitems }
    end
  end

  # GET /menuitems/1
  # GET /menuitems/1.xml
  def show
    @menuitem = Menuitem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @menuitem }
    end
  end

  # GET /menuitems/new
  # GET /menuitems/new.xml
  def new
    @menuitem = Menuitem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @menuitem }
    end
  end

  # GET /menuitems/1/edit
  def edit
    @menuitem = Menuitem.find(params[:id])
  end

  # POST /menuitems
  # POST /menuitems.xml
  def create
    @menuitem = Menuitem.new(params[:menuitem])

    respond_to do |format|
      if @menuitem.save
        format.html { redirect_to(@menuitem, :notice => 'Menuitem was successfully created.') }
        format.xml  { render :xml => @menuitem, :status => :created, :location => @menuitem }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @menuitem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /menuitems/1
  # PUT /menuitems/1.xml
  def update
    @menuitem = Menuitem.find(params[:id])

    respond_to do |format|
      if @menuitem.update_attributes(params[:menuitem])
        format.html { redirect_to(@menuitem, :notice => 'Menuitem was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @menuitem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /menuitems/1
  # DELETE /menuitems/1.xml
  def destroy
    @menuitem = Menuitem.find(params[:id])
    @menuitem.destroy

    respond_to do |format|
      format.html { redirect_to(menuitems_url) }
      format.xml  { head :ok }
    end
  end
end
