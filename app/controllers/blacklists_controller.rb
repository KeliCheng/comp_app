class BlacklistsController < ApplicationController
	def update
		@blacklist = Blacklist.find_by(id: current_user)

    	if @blacklist.update_attributes(blacklist_params)
      		flash[:success] = 'Saved your selection!'
      		redirect_to :back
    	else
      		flash[:danger] = 'We had a problem saving your part'
      		redirect_to :back
    	end
	end

	private

  	def blacklist_params
  		params.require(:blacklist).permit(:hd_id, :mobo_id, :ram_id, :gpu_id, :cpu_id, :power_id)
  	end
end
