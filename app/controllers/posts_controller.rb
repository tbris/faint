class PostsController < ApplicationController
  def index
    @posts = Post.where(is_reply: false)
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      if @post.is_reply
        redirect_to thread_path(@post.opening, anchor: @post.id)
      else
        redirect_to thread_path(@post)
      end
    else
      # handle errors
    end
  end

  private

  def post_params
    params.require(:post).permit(:subject, :comment, :opening_id)
  end
end
