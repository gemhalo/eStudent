class SessionsController < ApplicationController
  def create
    if !params[:user_name].blank?

      if user = User.authenticate(params[:user_name], params[:password])
         session[:user_id] = user.id
          redirect_to url
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
    session[:user_id] = nil
    #redirect_to store_url, :notice => "Logged out"

  end

end
