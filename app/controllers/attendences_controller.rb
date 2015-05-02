class AttendencesController < ApplicationController
  before_action :load_event

  def index
    @attendences=Attendence.all
  end

  def new
    @attendence=Attendence.new
  end

  def create
    @attendence=Attendence.new
    @attendence.user_id=current_user.id
    @attendence.event_id=@event.id

    if @attendence.save
      redirect_to @event
    else
      render 'new'
    end
  end

  private

  def attendence_params
    params.require(:attendence).permit()
  end

  def load_event
    @event = Event.find(params[:event_id])
  end
end
