class PostsController < ApplicationController

  before_action :find_post, only: [:edit, :update, :show, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new(post: @post) # # Для simple_form_for([@post, @comment])
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path, flash: {notice: 'Post successfuly updated'}
    else
      render :edit
    end
  end

  def destroy
    if @post.destroy
      redirect_to posts_path
    else
      redirect_to posts_path, flash: {error: 'Something goes wrong'}
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :description,:image)
    end

    def find_post
      @post = Post.find(params[:id])
    end
end
