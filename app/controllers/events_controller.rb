class EventsController < ApplicationController

  def index
    # render json: {message: "Hello from event index"}
    @events = Event.all
    render :index
  end
end
