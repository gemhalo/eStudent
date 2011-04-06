class CurriculumsController < ApplicationController
  # GET /curriculums
  # GET /curriculums.xml
  def index
    @curriculums = Curriculum.all
    @programs = Program.all
    @class_years = ClassYear.all
    @semesters = Semester.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @curriculums }
    end
  end

  # GET /curriculums/1
  # GET /curriculums/1.xml
  def show
    @curriculum = Curriculum.find(params[:id])
   @programs = Program.all
    @class_years = ClassYear.all
    @semesters = Semester.all
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @curriculum }
    end
  end

  # GET /curriculums/new
  # GET /curriculums/new.xml
  def new
    @curriculum = Curriculum.new
    @programs = Program.all
    @class_years = ClassYear.all
    @semesters = Semester.all
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @curriculum }
    end
  end

  # GET /curriculums/1/edit
  def edit
    @curriculum = Curriculum.find(params[:id])
    @programs = Program.all
    @class_years = ClassYear.all
    @semesters = Semester.all
  end

  # POST /curriculums
  # POST /curriculums.xml
  def create
    @curriculum = Curriculum.new(params[:curriculum])
    @class_year = ClassYear.all
    @semester = Semester.all
    @programs = Program.all
    respond_to do |format|
      if @curriculum.save
      format.html { redirect_to(@curriculum, :notice => 'Curriculum was successfully created.') }
      #  format.html { redirect_to :controller => 'curriculum_courses', :action => 'new', :curriculum_id => @curriculum.id}

        format.xml  { render :xml => @curriculum, :status => :created, :location => @curriculum }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @curriculum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /curriculums/1
  # PUT /curriculums/1.xml
  def update
    @curriculum = Curriculum.find(params[:id])
    @class_year = ClassYear.all
    @semester = Semester.all
     @programs = Program.all
    respond_to do |format|
      if @curriculum.update_attributes(params[:curriculum])
        format.html { redirect_to(@curriculum, :notice => 'Curriculum was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @curriculum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /curriculums/1
  # DELETE /curriculums/1.xml
  def destroy
    @curriculum = Curriculum.find(params[:id])
   @class_year = ClassYear.all
    @semester = Semester.all
     @programs = Program.all
    @curriculum.destroy

    respond_to do |format|
      format.html { redirect_to(curriculums_url) }
      format.xml  { head :ok }
    end
  end
end
