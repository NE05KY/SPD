class Root::AdminSessionsController < ApplicationController
  def new
    redirect_to root_roots if session[:admin_id]
  end

  def create
  	admin = Admin.find_by_name(params[:name])
  	if admin and admin.authenticate(params[:password])
      admin.update_attributes(last_visit: Time.now)
  		session[:admin_id] = admin.id
  		redirect_to root_roots_path
  	else
  		redirect_to root_login_url, alert: "Wrong password"
  	end
  end

  def destroy
  	session[:admin_id] = nil
  	redirect_to root_login_path, alert: "Bye-bye"
  end
end
