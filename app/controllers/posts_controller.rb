class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      # handle errors
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
