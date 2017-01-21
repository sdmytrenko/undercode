class LecturesController < ApplicationController

  before_action :find_course

  def index
    @lectures = Lecture.where("course_id = #{params[:course_id]}")
  end

  def new
    @lecture = @course.lectures.new
  end

  def create
    @lecture = @course.lectures.new(lecture_params)

    if @lecture.save
      redirect_to course_lecture_path(@course, @lecture)
    else
      render :new
    end
  end

  def edit
    @lecture = Lecture.find(params[:id])
  end

  def update
    @lecture = Lecture.find(params[:id])
    if @lecture.update(lecture_params)
      redirect_to course_lectures_path, flash: {notice: 'Post successfuly updated'}
    else
      render :edit
    end
  end

  def show
    @lecture = Lecture.find(params[:id])
  end

  def destroy
  end

  private
    def find_course
      @course = Course.find(params[:course_id])
    end

    def lecture_params
      params.require(:lecture).permit(:name, :plain, :hometask, :litterature)
    end
end
