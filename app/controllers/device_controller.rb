class DeviceController < ApplicationController
  def device_params
    params.permit(:system_id, :name)
  end

  def create
    @system = System.find(device_params[:system_id])
    @device = Device.new(device_params)

    @device.save
    redirect_to controller: 'system', action: 'show', id: device_params[:system_id]
  end
end 
