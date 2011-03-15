class UserSessionsController < ApplicationController
  # GET /user_sessions
  # GET /user_sessions.xml

# if current_user.role == "instructor"
 # redirect_to instructors_url
# else
# redirect_to student_service_staff_url
# end

  def index
#    path = case current_user.role
 #    when 'instructor'
#      path = instructors_path
   #   when 'student_service_staff'
    #    student_service_staffs_index_path
     # else
   # end
	redirect_to :controller =>"instructor"    
 end  
  def new
    @user_session = UserSession.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @user_session }
    end
  end

  # POST /user_sessions
  # POST /user_sessions.xml
  def create
    @user_session = UserSession.new(params[:user_session])

    respond_to do |format|
      if @user_session.save
        format.html { redirect_to(:users, :notice => 'Login Successful') }
        format.xml { render :xml => @user_session, :status => :created, :location => @user_session }
      else
        format.html { render :action => "new" }
        format.xml { render :xml => @user_session.errors, :status => :unprocessable_entity }
      end
    end
  end


  # DELETE /user_sessions/1
  # DELETE /user_sessions/1.xml
  def destroy
    @user_session = UserSession.find
    @user_session.destroy

    respond_to do |format|
      format.html { redirect_to(:action=>'new', :notice => 'Goodbye!') }
      format.xml { head :ok }
    end
  end
end
