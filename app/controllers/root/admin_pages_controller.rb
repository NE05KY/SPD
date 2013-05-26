class Root::AdminPagesController < ApplicationController
  before_filter :admin_authorize
  layout "root" 
  def index
  	@teachers = Teacher.all
  	@subjects = Subject.all
  end
end
