class Root::AdminSessionsController < ApplicationController
  def new
    redirect_to roots_path if session[:admin_id]
  end

  def create
  	admin = Admin.find_by_name(params[:name])
  	if admin and admin.authenticate(params[:password])
  		session[:admin_id] = admin.id
  		redirect_to roots_path
  	else
  		redirect_to root_login_url, alert: "Wrong password"
  	end
  end

  def destroy
  	session[:admin_id] = nil
  	redirect_to root_login_path, alert: "Bye-bye"
  end
end
