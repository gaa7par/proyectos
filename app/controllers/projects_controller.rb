class ProjectsController < ApplicationController
  def index
    if params[:search]
      @projects = Project.search(params[:search])
    else
      @projects = Project.all
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project
    else
      render 'new'
    end
  end

  private
  def project_params
    params.require(:project).permit(:name, :active)
  end
end
