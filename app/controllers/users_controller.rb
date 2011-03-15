class UsersController < ApplicationController
  
  # GET /users
  # GET /users.xml
before_filter do
	redirect_to new_user_session_path unless current_user #authenticated?
end 

 def index
    @users = User.all
    path = case current_user.role
    when 'instructor'
      instructors_path
    when 'admin'
	users_manageusers_path
    when 'student'
       new_applicant_path
    when 'ssstaff'
      student_service_staffs_path
     else
    end

    redirect_to path     

#    @users = User.all

    #respond_to do |format|
     # format.html # index.html.erb
    #  format.xml  { render :xml => @users }
   #   format.pdf { render :xml => @users }
    #end
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
  def manageusers

    @users = User.all

    #respond_to do |format|
     # format.html # index.html.erb
    #  format.xml  { render :xml => @users }
   #   format.pdf { render :xml => @users }
   # end 
  def forgot_password

    if request.post?
      #@users = User.new
      u = User.find_by_email(params[:users][:email])

      if u and u.send_password
        flash[:notice] = "Password Sent Successfuly"
      else
        flash[:notice] = "User with this email doesnot exist"
      end
    #logger.info("jjjjjjjjjjj #{@user.inspect}")
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
end


