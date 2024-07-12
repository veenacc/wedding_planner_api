class EventsController < ApplicationController

  def index
    # render json: {message: "Hello from event index"}
    # p current_user
    @events = Event.all
    render :index
  end

  def show
    @event= Event.find_by(id: params[:id])
    render :show
  end

  def update
    @event = Event.find_by(id: params[:id])
    if current_user
      @event.update(
        name: params[:name] || @event.name,
        description: params[:description] || @event.description,
        address: params[:address] || @event.address,
        image_url: params[:image_url] || @event.image_url,
        # user_id: params[:user_id] || @event.user_id,
        user_id: current_user.id,
        start_time: params[:start_time] || @event.start_time,
        end_time: params[:end_time] || @event.end_time,
      )
      render :show
    else
      render json: {message: "not authorized"}
    end
    
  end

end
