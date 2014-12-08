class BuildByController < ApplicationController

  def select_price
    @computer = Computer.find_by(id: current_user.current_comp)
  end

	def update
		@computer = Computer.find_by(id: current_user.current_comp)
    if @computer.update_attributes(price_params)
      flash[:success] = "You will get recommendations on parts based on your build price!"
      redirect_to component_pages_motherboard_path
    else
      flash[:danger] = 'We had a problem saving your price'
      redirect_to :back
    end
	end

	private

  	def price_params
  		params.require(:computer).permit(:by_price)
  	end
end