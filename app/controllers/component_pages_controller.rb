class ComponentPagesController < ApplicationController

  def motherboard
    @mother = Motherboard.all
    @computer = Computer.find_by(user_id: current_user.id)
    @moboprice = Motherboard.find_by(id: @computer.motherboard_id)
    @computer.price = @moboprice.price
    @computer.save
  end

  def cpu
    @computer = Computer.find_by(user_id: current_user.id)
    @moboprice = Motherboard.find_by(id: @computer.motherboard_id)
    @cpuprice = Cpu.find_by(id: @computer.cpu_id)
    @computer.price = @moboprice.price + @cpuprice.price
    @computer.save
    @cpu = Cpu.where(Motherboard.find_by(id: @computer.motherboard_id).cpu_compad == Cpu.mb_compad)
        #Cpu.where(Computer.find_by(user_id: current_user.id).A == Cpu.A)
  end

  def rvm
    @computer = Computer.find_by(user_id: current_user.id)
    @moboprice = Motherboard.find_by(id: @computer.motherboard_id)
    @cpuprice = Cpu.find_by(id: @computer.cpu_id)
    @rvmprice = Ram.find_by(id: @computer.ram_id)
    @computer.price = @moboprice.price + @cpuprice.price + @rvmprice.price
    @computer.save
    @rvm = Ram.where(Motherboard.find_by(id: @computer.motherboard_id).ram_compad == Ram.mb_compad)
  end

def gpu
  @computer = Computer.find_by(user_id: current_user.id)
  @moboprice = Motherboard.find_by(id: @computer.motherboard_id)
  @cpuprice = Cpu.find_by(id: @computer.cpu_id)
  @rvmprice = Ram.find_by(id: @computer.ram_id)
  @gpuprice = Gpu.find_by(id: @computer.gpu_id)
  @computer.price = @moboprice.price + @cpuprice.price + @rvmprice.price + @gpuprice.price
  @computer.save
 @gpu = Gpu.where(Motherboard.find_by(id: @computer.motherboard_id).gpu_compad == Gpu.mb_compad)
end

  def hd
    @computer = Computer.find_by(user_id: current_user.id)
    @moboprice = Motherboard.find_by(id: @computer.motherboard_id)
    @cpuprice = Cpu.find_by(id: @computer.cpu_id)
    @rvmprice = Ram.find_by(id: @computer.ram_id)
    @gpuprice = Gpu.find_by(id: @computer.gpu_id)
    @hdprice = Hd.find_by(id: @computer.hd_id)
    @computer.price = @moboprice.price + @cpuprice.price + @rvmprice.price +
    @gpuprice.price + @hdprice.price
    @computer.save
    @hd = Hd.where(Motherboard.find_by(id: @computer.motherboard_id).hd_compad == Hd.mb_compad)
  end

  def power
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
    @power = Power.all
  end


end
