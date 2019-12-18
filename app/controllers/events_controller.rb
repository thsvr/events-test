class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(events_params)
    if @event.save
      flash.now[:success] = "Your event was successfully created"
      redirect_to users_show_path
    else
      render 'new'
  end
end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:location, :event, :description, :date)
  end

end
