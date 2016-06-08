class WelcomeController < ApplicationController
  def index
    if params[:search]
      @users = User.search(params[:search])
      @projects = Project.search(params[:search])
    else
      @users = User.all
      @projects = Project.all
    end
  end
end
