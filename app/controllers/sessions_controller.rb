class SessionsController < ApplicationController
  def create
    unless params[:user_name].blank?

      if user = User.authenticate(params[:user_name], params[:password])
         session[:user_id] = user.id
         session[:user_name] = user.user_name
         session[:user_email] = user.email
         session[:user_fullname] = user.full_name
         session[:user_role]=user.role.name
         #TODO : to be modified later when user includes role
         
         #TODO : Dynamic list of roles with array based selection
         role=session[:user_role]#"department_head"
         #if session[:user_role] == "department_head"
         redirect_to :controller=>role,:action=>'index'
         #end
       else
        flash[:notice] = "Invalid User name or password "
        render 'new'
     end
     
   else

     flash[:notice] = "Please Enter User name !User name can not be Blank "
     render 'new'
  end
end

  def destroy
    #session[:user_id]= nil
    reset_session
    flash[:notice]="successfuly logged out"
    #redirect_to store_url, :notice => "Logged out"

  end

end
