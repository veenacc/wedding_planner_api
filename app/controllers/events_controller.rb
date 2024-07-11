class EventsController < ApplicationController

  def index
    # render json: {message: "Hello from event index"}
    p current_user
    @events = Event.all
    render :index
  end
  def show
    @event= Event.find_by(id: params[:id])
    render :show
  end
end
