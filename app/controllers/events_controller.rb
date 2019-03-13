class EventsController < ApplicationController
  before_action :authenticate_user!, only: :pick_event
  def index
    @events = Event.all
  end

  def pick_event
    @events = Event.all
  end
end
