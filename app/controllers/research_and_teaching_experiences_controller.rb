class ResearchAndTeachingExperiencesController < ApplicationController
  # GET /research_and_teaching_experiences
  # GET /research_and_teaching_experiences.xml
  def index
    @research_and_teaching_experiences = ResearchAndTeachingExperience.find_all_by_applicant_id(params[:applicant_id])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @research_and_teaching_experiences }
    end
  end

  # GET /research_and_teaching_experiences/1
  # GET /research_and_teaching_experiences/1.xml
  def show
    @research_and_teaching_experience = ResearchAndTeachingExperience.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @research_and_teaching_experience }
    end
  end

  # GET /research_and_teaching_experiences/new
  # GET /research_and_teaching_experiences/new.xml
  def new
    @applicantid = params[:applicant_id]
    @applicant = Applicant.find(@applicantid)
    @research_and_teaching_experiences = ResearchAndTeachingExperience.find_all_by_applicant_id(params[:applicant_id])
    @research_and_teaching_experience = ResearchAndTeachingExperience.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @research_and_teaching_experience }
    end
  end

  # GET /research_and_teaching_experiences/1/edit
  def edit
    @applicantid = params[:applicant_id]
    @research_and_teaching_experiences = ResearchAndTeachingExperience.find_all_by_applicant_id(params[:applicant_id])
    @research_and_teaching_experience = ResearchAndTeachingExperience.find(params[:id])
  end

  # POST /research_and_teaching_experiences
  # POST /research_and_teaching_experiences.xml
  def create
    
    
     @research_and_teaching_experience = ResearchAndTeachingExperience.new(params[:research_and_teaching_experience])
      respond_to do |format|

      if @research_and_teaching_experience.save
        
        @research_and_teaching_experiences = ResearchAndTeachingExperience.find_all_by_applicant_id(@applicantid)
         format.html { redirect_to :controller => 'research_and_teaching_experiences', :action => 'new', :applicant_id => @research_and_teaching_experience.applicant_id }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @research_and_teaching_experience.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /research_and_teaching_experiences/1
  # PUT /research_and_teaching_experiences/1.xml
  def update
    @research_and_teaching_experience = ResearchAndTeachingExperience.find(params[:id])

    respond_to do |format|
      if @research_and_teaching_experience.update_attributes(params[:research_and_teaching_experience])
         @research_and_teaching_experiences = ResearchAndTeachingExperience.find_all_by_applicant_id(params[:applicantid])
        format.html { redirect_to(@research_and_teaching_experience, :notice => 'Research and teaching experience was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @research_and_teaching_experience.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /research_and_teaching_experiences/1
  # DELETE /research_and_teaching_experiences/1.xml
  def destroy
    @research_and_teaching_experience = ResearchAndTeachingExperience.find(params[:id])
    @research_and_teaching_experience.destroy

    respond_to do |format|
      @research_and_teaching_experiences = ResearchAndTeachingExperience.find_all_by_applicant_id(params[:applicantid])
      format.html { render :action => "new" }
      format.xml  { head :ok }
    end
  end
end
