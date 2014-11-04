class ComputersController < ApplicationController
  def new
  	@computer = Computer.new
  end

  def create
  	@computer = Computer.new(computer_params)

  	if @computer.save
  	else
  	end
  end


  private

  def computer_params
  	params.require(:computer).permit(:name, :status, :price, :user_id,
      :hd_id, :motherboard_id, :ram_id, :gpu_id, :cpu_id, :power_id )
  end
end
