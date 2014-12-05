class StaticPagesController < ApplicationController
  def home
  	if logged_in?
  		@computers = Computer.where(user_id: current_user.id)
  		@current_comp = Computer.find_by_id(current_user.current_comp)
  	end
  end

  
end
