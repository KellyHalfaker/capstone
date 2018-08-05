class Api::UserEventsController < ApplicationController
  before_action :authenticate_user

  def create
    @user_event = UserEvent.new(
      user_id: current_user.id,
      event_id: params[:event_id]
    )
    @user_event.save
  end

  def destroy
    @user_event = UserEvent.find_by(user_id: current_user.id, event_id: params[:event_id])
    @user_event.destroy
  end


end
