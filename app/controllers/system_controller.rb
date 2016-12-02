class SystemController < ApplicationController
  def list
    @systems = System.all
  end
   
  def show
    @system = System.find(params[:id])
    @devices = @system.devices
  end

  def system_params
    params.require(:systems).permit(:name)
  end

  def create
    @system = System.new(system_params)

    if @system.save
      redirect_to :action => 'list'
    end
  end

  def device_params
    params.require(:devices).permit(:name)
  end

  def create_device
    @system = System.find(2)
    @system.devices.create(device_params)

    redirect_to controller: 'system', action: 'show', id: 2
  end

  def edit
    @system = System.find(params[:system])
  end

  def system_param
    params.require(:system).permit(:name)
  end

  def update
    @system = System.find(params[:id])
    
    if @system.update_attributes(system_param)
      redirect_to :action => 'show', :id => @system
    else
      render :action => 'edit'
    end
  end

  def delete
    System.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
