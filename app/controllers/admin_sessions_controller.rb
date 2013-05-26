class AdminSessionsController < ApplicationController
  def new
  end

  def create
  	admin = Admin.find_by_name(params[:name])
  	if admin and admin.authenticate(params[:password])
  		session[:admin_id] = admin.id
  		redirect_to root_admins_path
  	else
  		redirect_to login_url, alert: "Wrong password"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root
  end
end
