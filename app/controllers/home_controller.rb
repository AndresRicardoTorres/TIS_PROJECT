class HomeController < ApplicationController
  def index
    #redirect_to users_path
    @users = User.all
    @projects = Project.all
  end
end
