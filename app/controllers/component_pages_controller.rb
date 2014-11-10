class ComponentPagesController < ApplicationController

  def init_prices
    @computer = Computer.find_by(user_id: current_user.id)
    @moboprice = Motherboard.find_by(id: @computer.motherboard_id)
    @cpuprice = Cpu.find_by(id: @computer.cpu_id)
    @rvmprice = Ram.find_by(id: @computer.ram_id)
    @gpuprice = Gpu.find_by(id: @computer.gpu_id)
    @hdprice = Hd.find_by(id: @computer.hd_id)
    @powerprice = Power.find_by(id: @computer.power_id)
    @computer.price = @moboprice.price + @cpuprice.price + @rvmprice.price +
    @gpuprice.price + @hdprice.price + @powerprice.price
    @computer.save
  end

  def motherboard
    init_prices
    @mother = Motherboard.all
  end

  def cpu
    init_prices
    @cpu = Cpu.all
        #Cpu.where(Computer.find_by(user_id: current_user.id).A == Cpu.A)
  end

  def rvm
    init_prices
    @rvm = Ram.all
  end

  def gpu
    init_prices
    @gpu = Gpu.all
  end

  def hd
    init_prices
    @hd = Hd.all
  end


  def power
    init_prices
    @power = Power.all
  end
end
