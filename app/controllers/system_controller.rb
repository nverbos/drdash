class SystemController < ApplicationController
  def list
    @systems = System.all
  end
   
  def show
    @system = System.find(params[:id])
    @devices = @system.devices
  end

  def show_programs
    @system = System.find(params[:id])
    @programs = @system.programs.distinct
    @all_programs = Program.all - @programs
  end

  def add_program
    @system = System.find(params[:id])
    @system.programs << Program.find(params[:program_id])
  end

  def remove_program
    @system = System.find(params[:program_id])
    @program = Program.find(params[:system_id])
    @system.programs.delete(@program)
    redirect_to :action => 'show_programs', :id => @system.id
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

  def system_param
    params.require(:system).permit(:name)
  end

  def delete
    System.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
