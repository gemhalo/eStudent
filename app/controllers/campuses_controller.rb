class CampusesController < ApplicationController
  # GET /campuses
  # GET /campuses.xml
  def index
    @campuses = Campus.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @campuses }
      format.pdf {
        html = render_to_string(:layout => false , :action => "index.html.erb")
        kit = PDFKit.new(html)
        kit.stylesheets << "#{Rails.root}/public/stylesheets/screen.css"
        send_data(kit.to_pdf, :filename => "campuses.pdf", :type => 'application/pdf')
        return # to avoid double render page.call function, param1, param2
      }
    end


  end

  # GET /campuses/1
  # GET /campuses/1.xml
  def show
    @campus = Campus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @campus }
    end
  end

  # GET /campuses/new
  # GET /campuses/new.xml
  def new
    @campus = Campus.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @campus }
    end
  end

  # GET /campuses/1/edit
  def edit
    @campus = Campus.find(params[:id])
  end

  # POST /campuses
  # POST /campuses.xml
  def create
    @campus = Campus.new(params[:campus])

    respond_to do |format|
      if @campus.save
        format.html { redirect_to(@campus, :notice => 'Campus was successfully created.') }
        format.xml  { render :xml => @campus, :status => :created, :location => @campus }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @campus.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /campuses/1
  # PUT /campuses/1.xml
  def update
    @campus = Campus.find(params[:id])

    respond_to do |format|
      if @campus.update_attributes(params[:campus])
        format.html { redirect_to(@campus, :notice => 'Campus was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @campus.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /campuses/1
  # DELETE /campuses/1.xml
  def destroy
    @campus = Campus.find(params[:id])
    @campus.destroy

    respond_to do |format|
      format.html { redirect_to(campuses_url) }
      format.xml  { head :ok }
    end
  end
end

