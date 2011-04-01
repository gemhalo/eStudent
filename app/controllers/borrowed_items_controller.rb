class BorrowedItemsController < ApplicationController
  # GET /borrowed_items
  # GET /borrowed_items.xml
  def index
    @borrowed_items = BorrowedItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @borrowed_items }
    end
  end

  # GET /borrowed_items/1
  # GET /borrowed_items/1.xml
  def show
    @borrowed_item = BorrowedItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @borrowed_item }
    end
  end

  # GET /borrowed_items/new
  # GET /borrowed_items/new.xml
  def new
    @borrowed_item = BorrowedItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @borrowed_item }
    end
  end

  # GET /borrowed_items/1/edit
  def edit
    @borrowed_item = BorrowedItem.find(params[:id])
  end

  # POST /borrowed_items
  # POST /borrowed_items.xml
  def create
    @borrowed_item = BorrowedItem.new(params[:borrowed_item])

    respond_to do |format|
      if @borrowed_item.save
        format.html { redirect_to(@borrowed_item, :notice => 'Borrowed item was successfully created.') }
        format.xml  { render :xml => @borrowed_item, :status => :created, :location => @borrowed_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @borrowed_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /borrowed_items/1
  # PUT /borrowed_items/1.xml
  def update
    @borrowed_item = BorrowedItem.find(params[:id])

    respond_to do |format|
      if @borrowed_item.update_attributes(params[:borrowed_item])
        format.html { redirect_to(@borrowed_item, :notice => 'Borrowed item was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @borrowed_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /borrowed_items/1
  # DELETE /borrowed_items/1.xml
  def destroy
    @borrowed_item = BorrowedItem.find(params[:id])
    @borrowed_item.destroy

    respond_to do |format|
      format.html { redirect_to(borrowed_items_url) }
      format.xml  { head :ok }
    end
  end
end
