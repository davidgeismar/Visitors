class PagesController < ApplicationController
  def home
    @events = Event.all.limit(10)
  end
end
