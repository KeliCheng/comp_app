class StaticPagesController < ApplicationController
  def home
  	if logged_in?
  		@computers = Computer.where(user_id: current_user.id)
  		@current_comp = Computer.find_by_id(current_user.current_comp)
  		@motherboards = Motherboard.where(creator: current_user.id)
  		@cpus = Cpu.where(creator: current_user.id)
  		@gpus = Gpu.where(creator: current_user.id)
  		@rams = Ram.where(creator: current_user.id)
  		@hds = Hd.where(creator: current_user.id)
  		@powers = Power.where(creator: current_user.id)
  	end
  end

  
end
