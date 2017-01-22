class ProjectsController < ApplicationController

  before_action :find_course

  def index
    @projects = Project.where("course_id = #{params[:course_id]}")
  end

  def new
    @project = @course.projects.new
  end

  def create
    @project = @course.projects.new(project_params)

    if @project.save
      redirect_to course_projects_path
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(lecture_params)
      redirect_to course_projects_path, flash: {notice: 'Post successfuly updated'}
    else
      render :edit
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def destroy
  end

  private
    def find_course
      @course = Course.find(params[:course_id])
    end

    def project_params
      params.require(:project).permit(:name, :repo, :description, :tasks)
    end
end
