# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  before_filter :authenticate, :except => [:index, :show]


  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def logout
    session[:logged_in] = nil
    session[:logout_requested] = true
    flash[:notice] = "Voce se deslogou"
    redirect_to( home_path )    
  end  

  helper_method :logged_in?, :authenticate, :logout
  
  protected

  def authenticate
    session[:logged_in] = authenticate_or_request_with_http_basic do |name, password|
      u = Users.find_by_user(name)
      u != nil && u.password == password && session[:logout_requested] != true
    end
    session[:logout_requested] = nil
  end
    
  def logged_in?
    session[:logged_in] == true
  end
  
end
