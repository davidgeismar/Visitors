class EventsController < ApplicationController
  before_action :authenticate_user!, only: :pick_event
  def index
    @events = Event.all
  end

  def pick_event
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    Event.create(event_params)
    redirect_to root_path
  end

  private

  def event_params
    params.require(:event).permit(:photo, :name, :description, :start_date, :end_date, :address, :venue)
  end
end
