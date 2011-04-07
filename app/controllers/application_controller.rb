  class ApplicationController < ActionController::Base
  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
    #flash[:error]="You are not allowed to access this area"
    redirect_to root_url
  end

  helper_method :current_user_session, :current_user, :menus, :generate_pdf
  def menus
        if @current_user
          @menus=Menuitem.where("role_id=?",@current_user.role)
        else
          @menus = Menuitem.where("role_id=?","guest")
        end
  end

  private

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end
  def current_user
    logger.debug "ApplicationController::current_user"
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.user
  end

  def require_user
    logger.debug "ApplicationController::require_user"
    unless current_user
      store_location
      flash[:notice] = "You must be logged in to access this page"
      redirect_to login_url
      return false
    end
  end

  def require_no_user
    logger.debug "ApplicationController::require_no_user"
    if current_user
      store_location
      flash[:notice] = "You must be logged in to access this page"
     # @mypath = [current_user.role,"s_index_path"].join
      #redirect_to @mypath
      redirect_to  :controller=>"#{current_user}", :action=>"index"
      return false
    end
  end

  def store_location
    session[:return_to] = request.request_uri
  end

  def redirect_back_or_default(default)
    redirect_to(session[:return_to] || default)
    session[:return_to] = nil
  end

  # Not used
  def generate_pdf(action_name, file_name)
    html = render_to_string(:layout => false , :action => "#{action_name}")
    kit = PDFKit.new(html)
    kit.stylesheets << "#{Rails.root}/public/stylesheets/screen.css"
    send_data(kit.to_pdf, :filename => "#{file_name}.pdf", :type => 'application/pdf')
    return # to avoid double render page.call function, param1, param2
  end

  def menus_list
    user =""
    role = ""
    menus =[]
    if @current_user
      user = @current_user.name
      role = @current_user.role
      menus = Menuitem.fetch_menu_for_role(role)
    end
    menus
  end
end

