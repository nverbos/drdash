class DeviceController < ApplicationController
  def create
    @system = System.find(params[:system_id])
    @system.devices.create()

    redirect_to controller: 'system', action: 'show', id: 2
  end
end 
