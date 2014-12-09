class BlacklistsController < ApplicationController
	def update
		@blacklist = Blacklist.find_by(user_id: current_user)

    	if @blacklist.update_attributes(blacklist_params)
      		flash[:success] = 'Saved your selection!'
      		redirect_to :back
    	else
      		flash[:danger] = 'We had a problem saving your part'
      		redirect_to :back
    	end
	end

  def delete_mobo
      id = params[:moboid]
      @blacklist = Blacklist.find_by(user_id: current_user)
      @oldmobo = @blacklist.mobo_id.split(',')
      @oldmobo.delete(id)
      @blacklist.mobo_id = @oldmobo.join(',') + ','
      @blacklist.save
      redirect_to blacklist_pages_blacklist_path
  end
  
  def delete_cpu
      id = params[:cpuid]
      @blacklist = Blacklist.find_by(user_id: current_user)
      @oldcpu = @blacklist.cpu_id.split(',')
      @oldcpu.delete(id)
      @blacklist.cpu_id = @oldcpu.join(',') + ','
      @blacklist.save
      redirect_to blacklist_pages_blacklist_path
  end

  def delete_ram
      id = params[:ramid]
      @blacklist = Blacklist.find_by(user_id: current_user)
      @oldram = @blacklist.ram_id.split(',')
      @oldram.delete(id)
      @blacklist.ram_id = @oldram.join(',') + ','
      @blacklist.save
      redirect_to blacklist_pages_blacklist_path
  end

  def delete_gpu
      id = params[:gpuid]
      @blacklist = Blacklist.find_by(user_id: current_user)
      @oldgpu = @blacklist.gpu_id.split(',')
      @oldgpu.delete(id)
      @blacklist.gpu_id = @oldgpu.join(',') + ','
      @blacklist.save
      redirect_to blacklist_pages_blacklist_path
  end

  def delete_hd
      id = params[:hdid]
      @blacklist = Blacklist.find_by(user_id: current_user)
      @oldhd = @blacklist.hd_id.split(',')
      @oldhd.delete(id)
      @blacklist.hd_id = @oldhd.join(',') + ','
      @blacklist.save
      redirect_to blacklist_pages_blacklist_path
  end

  def delete_power
      id = params[:powerid]
      @blacklist = Blacklist.find_by(user_id: current_user)
      @oldpower = @blacklist.power_id.split(',')
      @oldpower.delete(id)
      @blacklist.power_id = @oldpower.join(',') + ','
      @blacklist.save
      redirect_to blacklist_pages_blacklist_path
  end

	private

  	def blacklist_params
  		params.require(:blacklist).permit(:hd_id, :mobo_id, :ram_id, :gpu_id, :cpu_id, :power_id)
  	end
end
