class RepliesController < ApplicationController
  def create
    reply = Reply.create(reply_params)

    if reply.save
      redirect_to post_path(reply.post, anchor: reply.id)
    else
      # handle errors
    end
  end

  private

  def reply_params
    params.require(:reply).permit(:comment, :post_id)
  end
end
