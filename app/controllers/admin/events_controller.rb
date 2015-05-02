class Admin::EventsController < Admin::BaseController
before_filter :find_event, only: [:show,:update,:edit,:destroy]

  def index
    @events=Event.all
  end

  def new
    @event=Event.new
  end

  def create
    @event=Event.new(events_params)
    if @event.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show

  end

  def update

  end

  def destroy

  end

  def edit

  end

  private
    def events_params
      params.require(:event).permit(:title,:description,:start,:end)
    end

    def find_event
      @event=Event.find(params[:id])
    end
end
