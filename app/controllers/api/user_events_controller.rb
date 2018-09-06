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
    user_event = UserEvent.find_by(user_id: current_user.id, event_id: params[:event_id])
    user_event.destroy
  end

  def current_user_events
    @events = current_user.events
    render "current_user_events.json.jbuilder"
    # @user_events = UserEvent.where(user_id: current_user.id)
    # @event_ids = @user_events.map { |user_event| user_event.event_id }
    # @events = []
    # @event_ids.each do |event_id|
    #   @events.push( {
    #     title: Event.find_by(id: event_id).title,
    #     address: Event.find_by(id: event_id).address,
    #     date: Event.find_by(id: event_id).date
    #   })

    # end
    # render "current_user_events.json.jbuilder"
  end

end
