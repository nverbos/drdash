class EventController < ApplicationController
  before_action :authenticate_user!
  def event_params
    params.permit(:program_id, :start, :end)
  end

  def create
    @program = Program.find(event_params[:program_id])
    @event = Event.new(event_params)

    @event.save
    redirect_to controller: 'program', action: 'show', id: event_params[:program_id]
  end

  def delete
    Event.find(params[:id]).destroy 
    redirect_to controller: 'program', action: 'show', id: params[:program_id]
  end
end
