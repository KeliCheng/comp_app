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
  	params.require(:computer).permit(:name, :price, :user_id, :status)
  end
end
