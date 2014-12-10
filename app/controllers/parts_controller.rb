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
      @notif = Notification.create()
      @notif.body = "New part added! Part: Motherboard Creator: " + @motherboard.creator.to_s + " Name: " + @motherboard.name.to_s +
        " CPU Compatibility: " + @motherboard.cpu_compad.to_s + " GPU Compatibility: " + @motherboard.gpu_compad.to_s +
        " RAM Compatibility: " + @motherboard.ram_compad.to_s + " HD Compability: " + @motherboard.hd_compad.to_s +
        " Watts: " + @motherboard.watts.to_s + " Price: $" + @motherboard.price.to_s
      @notif.save
      redirect_to parts_add_path
    else
      flash[:danger] = "You must have the input of the correct type in all fields to create a part."
      redirect_to :back
    end
  end

  def create_cpu
    if @cpu = Cpu.create(cpu_params)
    else
      flash[:danger] = "You must have input of the correct type in all fields to create a part."
      redirect_to :back
    end
    @cpu.creator ||= current_user.id
    if @cpu.save
      flash[:success] = "Your CPU has been created!"
      @notif = Notification.create()
      @notif.body = "New part added! Part: CPU Creator: " + @cpu.creator.to_s + " Name: " + @cpu.name.to_s +
        " Motherboard Compatibility: " + @cpu.mb_compad.to_s + " Cores: " + @cpu.cores.to_s + 
        " Speed: " + @cpu.speed.to_s + " Watts: " + @cpu.watts.to_s + " Price: $" + @cpu.price.to_s
      @notif.save
      redirect_to parts_add_path
    else
      flash[:danger] = "You must have input of the correct type in all fields to create a part."
      redirect_to :back
    end
  end

  def create_gpu
    @gpu = Gpu.create(gpu_params)
    @gpu.creator ||= current_user.id
    if @gpu.save
      flash[:success] = "Your GPU has been created!"
      @notif = Notification.create()
      @notif.body = "New part added! Part: GPU Creator: " + @gpu.creator.to_s + " Name: " + @gpu.name.to_s +
        " Motherboard Compatibility: " + @gpu.mb_compad.to_s + " VRAM: " + @gpu.vram.to_s + " Watts: " + 
        @gpu.watts.to_s + " Price: $" + @gpu.price.to_s
      @notif.save
      redirect_to parts_add_path
    else
      flash[:danger] = "You must have input of the correct type in all fields to create a part."
      redirect_to :back
    end
  end

  def create_ram
    @ram = Ram.create(ram_params)
    @ram.creator ||= current_user.id
    if @ram.save
      flash[:success] = "Your RAM has been created!"
      @notif = Notification.create()
      @notif.body = "New part added! Part: RAM Creator: " + @ram.creator.to_s + " Name: " + @ram.name.to_s +
        " Motherboard Compatibility: " + @ram.mb_compad.to_s + " Size: " + @ram.size.to_s + " Watts: " + 
        @ram.watts.to_s + " Price: $" + @ram.price.to_s
      @notif.save
      redirect_to parts_add_path
    else
      flash[:danger] = "You must have input of the correct type in all fields to create a part."
      redirect_to :back
    end
  end

  def create_hd
    @hd = Hd.create(hd_params)
    @hd.creator ||= current_user.id
    if @hd.save
      flash[:success] = "Your HD has been created!"
      @notif = Notification.create()
      @notif.body = "New part added! Part: HD Creator: " + @hd.creator.to_s + " Name: " + @hd.name.to_s +
        " Motherboard Compatibility: " + @hd.mb_compad.to_s + " Size: " + @hd.size.to_s + " Watts: " + 
        @hd.watts.to_s + " Price: $" + @hd.price.to_s
      @notif.save
      redirect_to parts_add_path
    else
      flash[:danger] = "You must have input of the correct type in all fields to create a part."
      redirect_to :back
    end
  end

  def create_power
    @power = Power.create(power_params)
    @power.creator ||= current_user.id
    if @power.save
      flash[:success] = "Your power supply has been created!"
      @notif = Notification.create()
      @notif.body = "New part added! Part: Power Supply Creator: " + @power.creator.to_s + " Name: " + 
      @power.name.to_s + " Watts: " + @power.watts.to_s + " Price: $" + @power.price.to_s
      @notif.save
      redirect_to parts_add_path
    else
      flash[:danger] = "You must have input of the correct type in all fields to create a part."
      redirect_to :back
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