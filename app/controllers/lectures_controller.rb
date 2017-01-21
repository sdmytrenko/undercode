class LecturesController < ApplicationController

  before_action :find_lecture, only: [:edit, :update, :show, :index, :destroy]

  def index
    @lectures = Lecture.where("course_id = #{params[:course_id]}")
  end

  def new
    @lecture = Lecture.new
  end

  def create
    @lecture = Lecture.new(lecture_params)
    @lecture.course_id = params[:course_id]
    if @lecture.save
      redirect_to course_lecture_path(@lecture.course_id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    
  end

  def show
    @lecture = Lecture.find(params[:id])
  end

  def destroy
    
  end

  private
    def find_lecture
      @lecture = Lecture.find(params[:course_id])
    end

    def lecture_params
      params.require(:lecture).permit(:name, :plain, :hometask, :litterature)
    end
end
