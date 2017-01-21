class CoursesController < ApplicationController

  before_action :find_course, only: [:edit, :update, :destroy]

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to courses_path
    else
      render :new
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
  end

  def update
    if @course.update(course_params)
      redirect_to courses_path, flash: {notice: 'Post successfuly updated'}
    else
      render :edit
    end
  end

  def destroy
    if @course.destroy
      redirect_to courses_path
    else
      redirect_to courses_path, flash: {error: 'Something goes wrong'}
    end
  end

  private
    def find_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:name, :description, :start_date)
    end
end
