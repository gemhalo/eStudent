class DepartmentChoicesController < ApplicationController
  # GET /department_choices
  # GET /department_choices.xml
  def index
    @departments=Department.all
    @department_choices = DepartmentChoice.find_all_by_applicant_id(params[:applicant_id])



    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @department_choices }
    end
  end

  # GET /department_choices/1
  # GET /department_choices/1.xml
  def show
    @departments=Department.all
    @department_choice = DepartmentChoice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @department_choice }
    end
  end

  # GET /department_choices/new
  # GET /department_choices/new.xml
  def new
     @applicantid = params[:applicant_id]
     @Existdep  = DepartmentChoice.where("applicant_id = ? ",@applicantid)
     a = Array.new
     @Existdep.each do |dep|
       a << dep.department.id
         #logger.info("------------ss------#{a}---")
     end
    
    if @Existdep.size != 0
       @departments = Department.where(["id NOT IN (?) ", a])
    else
       @departments = Department.all
    end
       @department_choice = DepartmentChoice.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @department_choice }
    end
  end

  # GET /department_choices/1/edit
  def edit
    @departments=Department.all
    @applicantid = params[:applicant_id]
    @department_choice = DepartmentChoice.find(params[:id])
    @department_choices = DepartmentChoice.find_all_by_applicant_id(params[:applicant_id])
  end

  # POST /department_choices
  # POST /department_choices.xml
  def create
    @Existdep  = DepartmentChoice.where("applicant_id = ? ",@applicantid)
     a = Array.new
     @Existdep.each do |dep|
       a << dep.department.id
         #logger.info("------------ss------#{a}---")
     end

    if @Existdep.size != 0
       @departments = Department.where(["id NOT IN (?) ", a])
    else
       @departments = Department.all
    end
    
      @department_choice = DepartmentChoice.new(params[:department_choice])
      logger.info("------------appli------#{@department_choice.applicant_id}---")
      logger.info("------------prefer------#{@department_choice.preference}---")
      respond_to do |format|
    if DepartmentChoice.validate_uniqness_preference(@department_choice.applicant_id,@department_choice.preference) != false
        

           if @department_choice.save
              @department_choices = DepartmentChoice.find_all_by_applicant_id(@applicantid)
              format.html { redirect_to :controller => 'department_choices', :action => 'new', :applicant_id => @department_choice.applicant_id }
           else
              format.html { render :action => "new" }
              format.xml  { render :xml => @department_choice.errors, :status => :unprocessable_entity }
           end
 
  else
          
         format.html { redirect_to :controller => 'department_choices', :action => 'new', :applicant_id => @department_choice.applicant_id }
         flash[:notice] = "Preference Exists!"
    end

          end
  end

  # PUT /department_choices/1
  # PUT /department_choices/1.xml
  def update
    @departments=Department.all
    @applicantid= params[:applicant_id]
    @department_choice = DepartmentChoice.find(params[:id])

    respond_to do |format|
      if @department_choice.update_attributes(params[:department_choice])
          @department_choices = DepartmentChoice.find_all_by_applicant_id(params[:applicant_id])
          format.html { render :action => "new" }
       # format.html { redirect_to(@department_choice, :notice => 'Department Choice was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @department_choice.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /department_choices/1
  # DELETE /department_choices/1.xml
  def destroy
    @departments=Department.all
    @department_choice = DepartmentChoice.find(params[:id])
    @department_choice.destroy

    respond_to do |format|
       @department_choices = DepartmentChoice.find_all_by_applicant_id(params[:applicant_id])
      #format.html { redirect_to(department_choices_url) }
      format.html { render :action => "new" }
      format.xml  { head :ok }
    end
  end
end