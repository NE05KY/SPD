class PagesController < ApplicationController
  def index
  end

  def about
  end

  def help
  end

  def root
  	redirect_to root_admins_path
  end
end
