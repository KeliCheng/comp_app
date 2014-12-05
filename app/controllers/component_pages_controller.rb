class ComponentPagesController < ApplicationController

  def init_prices
    @computer = Computer.find_by(id: current_user.current_comp)
    @moboprice = Motherboard.find_by(id: @computer.motherboard_id)
    @cpuprice = Cpu.find_by(id: @computer.cpu_id)
    @ramprice = Ram.find_by(id: @computer.ram_id)
    @gpuprice = Gpu.find_by(id: @computer.gpu_id)
    @hdprice = Hd.find_by(id: @computer.hd_id)
    @powerprice = Power.find_by(id: @computer.power_id)
    @computer.price = @moboprice.price + @cpuprice.price + @ramprice.price +
    @gpuprice.price + @hdprice.price + @powerprice.price

    @computer.save
  end

  def motherboard
    init_prices
    @mother = Motherboard.all   #do not display id = 1 
  end

  def cpu
    init_prices
    #@cpu = Cpu.all
    @cpu = Cpu.where(mb_compad: Motherboard.find_by(id: @computer.motherboard_id).cpu_compad) #do not display id = 1 
  end

  def ram
    init_prices
    #@ram = Ram.all
    @ram = Ram.where(mb_compad: Motherboard.find_by(id: @computer.motherboard_id).ram_compad)  #do not display id = 1 
  end

  def gpu
    init_prices
    #@gpu = Gpu.all
    @gpu = Gpu.where(mb_compad: Motherboard.find_by(id: @computer.motherboard_id).gpu_compad)  #do not display id = 1 
  end

  def hd
    init_prices
    #@hd = Hd.all
    @hd = Hd.where(mb_compad: Motherboard.find_by(id: @computer.motherboard_id).hd_compad)  #do not display id = 1 
  end


  def power   #do not display id = 1 
    init_prices
    # @power = Power.all
    @mobowatts = Motherboard.find_by(id: @computer.motherboard_id).watts
    @cpuwatts = Cpu.find_by(id: @computer.motherboard_id).watts
    @ramwatts = Ram.find_by(id: @computer.motherboard_id).watts
    @gpuwatts = Gpu.find_by(id: @computer.motherboard_id).watts
    @hdwatts = Hd.find_by(id: @computer.motherboard_id).watts
    @powerwatts = (@mobowatts+@cpuwatts+@ramwatts+@gpuwatts+@hdwatts)*1.1 
    #power supply cannot be used for more than 90%
    @power = Power.where("watts >= ?", @powerwatts)
  end
end
