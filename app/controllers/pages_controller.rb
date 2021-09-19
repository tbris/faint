class PagesController < ApplicationController
  def show
    num = params[:id].to_i
    @posts = Post.where(is_reply: false).
      where("id >= ? AND id < ?", (num - 1) * 10, num * 10)

    render "posts/index"
  end
end
