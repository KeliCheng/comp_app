class SimilarComputersController < ApplicationController
  def menu
  end

  def similar_price
  	@computer = Computer.find_by(user_id: current_user.id)
  	@similar_computers = Computer.where(:price => (@computer.price-100)..(@computer.price+100))
  end

  def similar_components
  	@computer = Computer.find_by(user_id: current_user.id)
  	@similar_motherboards = Computer.where(motherboard_id: @computer.motherboard_id)
  end
end
