class ApplicationController < ActionController::Base
  protect_from_forgery

  protected

	  def admin_authorize
	  	unless Admin.find_by_id(session[:admin_id])
	  	redirect_to login_url, alert: 'Plz authorize'
	  end
	end
end
