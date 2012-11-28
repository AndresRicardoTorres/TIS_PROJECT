class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    #redirect_to users_path
    @users = User.all
    @projects = Project.all
  end
end
