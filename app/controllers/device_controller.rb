class DeviceController < ApplicationController
  before_action :authenticate_user!, except: [:show_events]
  def device_params
    params.permit(:system_id, :name)
  end

  def create
    @system = System.find(device_params[:system_id])
    @device = Device.new(device_params)

    @device.save
    redirect_to controller: 'system', action: 'show', id: device_params[:system_id]
  end

  def show_events
    @device = Device.where(key: params[:key])
    @system = System.find(@device.first.system_id)
    @events = @system.events.distinct
    render json: @events
  end
end 
