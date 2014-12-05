class PartsController < ApplicationController

  def add_motherboard
    @motherboard = Motherboard.new
  end

  def add_cpu
    @cpu = Cpu.new
  end

  def add_gpu
    @gpu = Gpu.new
  end

  def add_ram
    @ram = Ram.new
  end

  def add_hd
    @hd = Hd.new
  end

  def add_power
    @power = Power.new
  end

  def create_motherboard
    @motherboard = Motherboard.create(motherboard_params)
    @motherboard.creator ||= current_user.id

    if @motherboard.save
      flash[:success] = "Your motherboard has been created!"
      redirect_to parts_add_path
    else
      render 'new'
    end
  end

  def create_cpu
    @cpu = Cpu.create(cpu_params)
    @cpu.creator ||= current_user.id
    if @cpu.save
      flash[:success] = "Your CPU has been created!"
      redirect_to parts_add_path
    else
      render 'new'
    end
  end

  def create_gpu
    @gpu = Gpu.create(gpu_params)
    @gpu.creator ||= current_user.id
    if @gpu.save
      flash[:success] = "Your GPU has been created!"
      redirect_to parts_add_path
    else
      render 'new'
    end
  end

  def create_ram
    @ram = Ram.create(ram_params)
    @ram.creator ||= current_user.id
    if @ram.save
      flash[:success] = "Your RAM has been created!"
      redirect_to parts_add_path
    else
      render 'new'
    end
  end

  def create_hd
    @hd = Hd.create(hd_params)
    @hd.creator ||= current_user.id
    if @hd.save
      flash[:success] = "Your HD has been created!"
      redirect_to parts_add_path
    else
      render 'new'
    end
  end

  def create_power
    @power = Power.create(power_params)
    @power.creator ||= current_user.id
    if @power.save
      flash[:success] = "Your power supply has been created!"
      redirect_to parts_add_path
    else
      render 'new'
    end
  end

  private

  def motherboard_params
    params.require(:motherboard).permit(:price, :cpu_compad, :gpu_compad, :ram_compad, :hd_compad, :watts, :name)
  end

  def cpu_params
    params.require(:cpu).permit(:speed, :price, :mb_compad, :cores, :watts, :name, :creator)
  end

  def gpu_params
    params.require(:gpu).permit(:vram, :price, :mb_compad, :watts, :name, :creator)
  end

  def ram_params
    params.require(:ram).permit(:price, :size, :mb_compad, :watts, :name, :creator)
  end

  def hd_params
    params.require(:hd).permit(:price, :size, :mb_compad, :watts, :name, :creator)
  end

  def power_params
    params.require(:power).permit(:price, :watts, :name, :creator)
  end

end