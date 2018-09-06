class Api::CommentsController < ApplicationController
  def create
    @comment = Comment.new(
      content: params[:content],
      event_id: params[:event_id],
      user_id: current_user.id
      )
    @comment.save
  end


end
