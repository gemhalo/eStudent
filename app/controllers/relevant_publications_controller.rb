class RelevantPublicationsController < ApplicationController
  # GET /relevant_publications
  # GET /relevant_publications.xml
  def index
    @relevant_publications = RelevantPublication.find_all_by_applicant_id(params[:applicant_id])
   

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @relevant_publications }
    end
  end

  # GET /relevant_publications/1
  # GET /relevant_publications/1.xml
  def show
    @relevant_publication = RelevantPublication.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @relevant_publication }
    end
  end

  # GET /relevant_publications/new
  # GET /relevant_publications/new.xml
  def new
    @applicantid = params[:applicant_id]
    @relevant_publication = RelevantPublication.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @relevant_publication }
    end
  end

  # GET /relevant_publications/1/edit
  def edit
    @applicantid = params[:applicant_id]
   @relevant_publications = RelevantPublication.find_all_by_applicant_id(params[:applicant_id])
   @relevant_publication = RelevantPublication.find(params[:id])
  end

  # POST /relevant_publications
  # POST /relevant_publications.xml
  def create
    
 flash["@applicantid"] = params[:applicant_id]
     @relevant_publication = RelevantPublication.new(params[:relevant_publication])
      respond_to do |format|

      if @relevant_publication.save
        logger.info("---------session----------#{session["@applicantid"]}")
        @relevant_publications = RelevantPublication.find_all_by_applicant_id(@applicantid)
         format.html { render :action => "new" }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @relevant_publication.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /relevant_publications/1
  # PUT /relevant_publications/1.xml
  def update
    @relevant_publication = RelevantPublication.find(params[:id])

    respond_to do |format|
      if @relevant_publication.update_attributes(params[:relevant_publication])
        @relevant_publications = RelevantPublication.find_all_by_applicant_id(params[:applicant_id])
        format.html { redirect_to(@relevant_publication, :notice => 'Relevant publication was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @relevant_publication.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /relevant_publications/1
  # DELETE /relevant_publications/1.xml
  def destroy
    @relevant_publication = RelevantPublication.find(params[:id])
    @relevant_publication.destroy

    respond_to do |format|
      @relevant_publications = RelevantPublication.find_all_by_applicant_id(params[:applicant_id])
      format.html { render :action => "new" }
      format.xml  { head :ok }
    end
  end
end
