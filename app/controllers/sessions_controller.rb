class SessionsController < ApplicationController
  #login : POST login
  def create
    if !params[:user_name].blank?
      if user = User.authenticate(params[:user_name], params[:password])
        session[:user_id] = user.id
        flash[:notice] = "Authenticated! "
        redirect_to url
      else
        flash[:notice] = "Invalid User name or password "
        render 'new'
      end
    else
      #login GET login
      flash[:notice] = "ERROR: Please Enter User name ! User name can not be Blank "
      @user = User.new
      render 'new'
    end
  end

  #logout
  def destroy
    session[:user_id] = nil
    #redirect_to store_url, :notice => "Logged out"
  end
end

