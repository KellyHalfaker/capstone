class Api::EventsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    @events = Event.all.order(:id)
    render "index.json.jbuilder"
  end

  def create
    @event = Event.new(
      title: params[:title],
      description: params[:description],
      address: params[:address],
      date: params[:date],
      user_id: current_user.id
      )
    @event.save
    user_event = UserEvent.new(
      user_id: current_user.id,
      event_id: @event.id
      )
    user_event.save
    tags_input = params[:tag_names].split(", ")
    tags_input.each do |tag_name|
      tag = Tag.find_by(name: tag_name)
      if !tag
        tag = Tag.new(
          name: tag_name
          )
        tag.save
      end
      event_tag = EventTag.new(
          event_id: @event[:id],
          tag_id: tag[:id]
          )
      event_tag.save
    end
    images_input = params[:image_urls].split(", ")
    images_input.each do |image_url|
      image = Image.new(
        url: image_url,
        event_id: @event.id
        )
      image.save
    end
    render "show.json.jbuilder"
  end

  def show
    @event =Event.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @event = Event.find_by_id(params[:id])
    if @event.creator.id == current_user.id
      @event.title = params[:title] || @event.title
      @event.address = params[:address] || @event.address
      @event.description = params[:description] || @event.description
      @event.date = params[:date] || @event.date
      @event.save
      if params[:tag_names]
        tags_input = params[:tag_names].split(", ")
        tags_input.each do |tag_name|
          tag = Tag.find_by(name: tag_name)
          if !tag
            tag = Tag.new(
              name: tag_name
              )
            tag.save
          end
          event_tag = EventTag.new(
              event_id: @event[:id],
              tag_id: tag[:id]
              )
          event_tag.save
        end
      end
      if params[:image_urls]
        images_input = params[:image_urls].split(", ")
        images_input.each do |image_url|
          image = Image.new(
            url: image_url,
            event_id: @event.id
            )
          image.save
        end
      end
      render "show.json.jbuilder"
    else
      render json: {}, status: :unauthorized
    end
  end

  def destroy
    event = Event.find_by_id(params[:id])
    if event.creator.id == current_user.id
      event.event_tags.each do |event_tag|
        event_tag.destroy
      end
      event.user_events.each do |user_event|
        user_event.destroy
      end
      event.images.each do |image|
        image.destroy
      end
      event.destroy
    else 
      render json: {}, status: :unauthorized
    end
  end
end
