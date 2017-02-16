class ProjectsController < ApplicationController

  before_action :find_course
  before_action :find_project, only: [:edit, :update, :show]

  def index
    @projects = Project.where("course_id = #{params[:course_id]}")
  end

  def new
    @project = @course.projects.new
  end

  def create
    @project = @course.projects.new(project_params)
    @project.user = current_user
    if @project.save
      redirect_to course_project_path(@course, @project)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to course_projects_path, flash: {notice: 'Post successfuly updated'}
    else
      render :edit
    end
  end

  def show
  end

  def destroy
  end

  private
    def find_course
      @course = Course.find(params[:course_id])
    end

    def find_project
      @project = Project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:name, :repo, :description, :tasks, :image)
    end
end
