class EventsController < ApplicationController
  before_filter :find_event, only: [:show]

  def index
    @events=Event.all
  end

  def show

  end

  private

  def find_event
    @event=Event.find(params[:id])
  end
end