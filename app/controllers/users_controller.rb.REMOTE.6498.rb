class UsersController < ApplicationController

  def index
    path = case current_user.role
      when 'instructor'
        instructors_path
      when 'admin'
        users_manageusers_path
      when 'student'
        new_applicant_path
      when 'student_service_staff'
        student_service_staffs_path
      else
    end

    redirect_to path
  end

  def assign_roles

  end

  # GET /users/1
  # GET /users/1.xml

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to(@user, :notice => 'Registration successfull') }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml

  def forgot_password

    if request.post?
      #@users = User.new
      u = User.find_by_email(params[:users][:email])
      logger.info("jjjjjjjjjjj #{u.inspect}")
      if u and u.send_password
        flash[:notice] = "Password Sent Successfuly"
      else
        flash[:notice] = "User with this email doesnot exist"
      end
    
    end
  end



  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
end

