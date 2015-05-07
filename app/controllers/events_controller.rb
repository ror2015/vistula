class EventsController < ApplicationController
  before_filter :find_event, only: [:show]

  def index
    @events=Event.all
  end

  def show
    @attendences=Attendence.where(event_id: @event.id)
    @attendence= :find_attendence
  end

  private

  def find_event
    @event=Event.find(params[:id])
  end

  def find_attendence
    @attendence=Attendence.find(params[:id])
  end

end