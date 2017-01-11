class LecturesController < ApplicationController


  before_action :find_lecture

  def index
    @lectures = Lecture.all
  end

  def show
    @lecture = Lecture.find(params[:id])
  end

  private
    def find_lecture
      @lecture = Lecture.find(params[:course_id])
    end
end
