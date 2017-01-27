class CommentsController < ApplicationController

  before_action :find_comment, only: [:edit, :update, :destroy]

  def create
    @comment = Comment.new(comment_params)
    @comment.post_id = params[:post_id]
    @comment.user = current_user
    if @comment.save
      redirect_to post_path(@comment.post_id)
    else
      render "posts/show"
    end
  end

  def edit
  end

  def update
    if @comment.update(comment_params)
      redirect_to post_path(@comment.post_id), flash: {notice: 'Comment successfuly updated'}
    else
      render :edit
    end
  end

  def destroy
    if @comment.destroy
      redirect_to post_path(@comment.post_id)
    else
      redirect_to post_path(@comment.post_id), flash: {error: 'Comment not deleted'}
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:text, :post_closed)
    end

    def find_comment
      @comment = Comment.find(params[:id])
    end
end
