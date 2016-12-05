class ProgramController < ApplicationController
  before_action :authenticate_user!
  def list
    @programs = Program.all
  end
   
  def show
    @program = Program.find(params[:id])
    @devices = @program.events
  end

  def program_params
    params.require(:program).permit(:name)
  end

  def create
    @program = Program.new(program_params)

    if @program.save
      redirect_to :action => 'list'
    end
  end
  def delete
    Program.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
