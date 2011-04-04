class AdminController < ApplicationController
  authorize_resource
  def index
  	@users= User.all
 	   respond_to do |format|
	   format.html # index.html.erb
	   format.xml  { render :xml => @users }
	 end
  end
#  def show
 #   @user = User.find(params[:id])

  #  respond_to do |format|
   #   format.html # show.html.erb
   #   format.xml  { render :xml => @user }
   # end
 # end

end

