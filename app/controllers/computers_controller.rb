class ComputersController < ApplicationController
  def new
  	@computer = Computer.new
  end

  def update
    @computer = Computer.find_by(user_id: current_user.id)

    if @computer.update_attributes(computer_params)
      flash[:success] = 'Saved your selection!'
      redirect_to :back
    else
      flash[:danger] = 'We had a problem saving your part'
      redirect_to :back
    end
  end

  def create
  	@computer = current_user.computers.build(computer_params)


  	if @computer.save
      flash[:success] = 'Saved your selection!'
      redirect_to :back

  	else
      flash[:danger] = 'We had a problem saving your part.'
      redirect_to :back
  	end
  end


  private

  def computer_params
  	params.require(:computer).permit(:name, :status, :price, :hd_id, :motherboard_id, :ram_id, :gpu_id, :cpu_id, :power_id )
  end
end
