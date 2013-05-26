module ApplicationHelper
	def admin_name
		Admin.find_by_id(session[:admin_id]).name 
	end
end
