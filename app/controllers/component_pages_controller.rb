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
    @motherbl = Blacklist.find_by(user_id: current_user).mobo_id.split(',')
    @cpubl = Blacklist.find_by(user_id: current_user).cpu_id.split(',')
    @rambl = Blacklist.find_by(user_id: current_user).ram_id.split(',')
    @gpubl = Blacklist.find_by(user_id: current_user).gpu_id.split(',')
    @hdbl = Blacklist.find_by(user_id: current_user).hd_id.split(',')
    @powerbl = Blacklist.find_by(user_id: current_user).power_id.split(',')
    @by_price = @computer.by_price
    @part_allowance = @by_price / 6
    @moboavg = '%.2f' % Motherboard.average(:price)
    @cpuavg = '%.2f' % Cpu.average(:price)
    @gpuavg = '%.2f' % Gpu.average(:price)
    @ramavg = '%.2f' % Ram.average(:price)
    @hdavg = '%.2f' % Hd.average(:price)
    @poweravg = '%.2f' % Power.average(:price)
    @computer.save
  end

  def motherboard_selected(page_name)
    if @computer.motherboard_id ==1
        flash[:danger] = 'You need a motherboard selected before accessing the ' + page_name
        redirect_to component_pages_motherboard_path
    end
  end

  def motherboard
    init_prices
    #@mother = Motherboard.all   #do not display id = 1
    @mother = Motherboard.where.not(id: @motherbl) #do not display blacklisted items
    @user = User.all

  end

  def cpu
    init_prices
    #@cpu = Cpu.all
    motherboard_selected("CPU page")
    @motherboard = Motherboard.find_by(id: @computer.motherboard_id)
    #@cpu = Cpu.where(mb_compad: Motherboard.find_by(id: @computer.motherboard_id).cpu_compad) #do not display id = 1 
    #@cpu = Cpu.where.not(id: @cpubl) #do not display blacklisted items
    @cpu = Cpu.where(mb_compad: Motherboard.find_by(id: @computer.motherboard_id).cpu_compad) & Cpu.where.not(id: @cpubl) #do not display either
  end

  def ram
    init_prices
    #@ram = Ram.all
    motherboard_selected("RA page")
    @motherboard = Motherboard.find_by(id: @computer.motherboard_id)
    #@ram = Ram.where(mb_compad: Motherboard.find_by(id: @computer.motherboard_id).ram_compad)  #do not display id = 1 
    #@ram = Ram.where.not(id: @rambl) #do not display blacklisted items
    @ram = Ram.where(mb_compad: Motherboard.find_by(id: @computer.motherboard_id).ram_compad) & Ram.where.not(id: @rambl) #do not display either
  end

  def gpu
    init_prices
    #@gpu = Gpu.all
    motherboard_selected("GPU page")
    @motherboard = Motherboard.find_by(id: @computer.motherboard_id)
    #@gpu = Gpu.where(mb_compad: Motherboard.find_by(id: @computer.motherboard_id).gpu_compad)  #do not display id = 1 
    #@gpu = Gpu.where.not(id: @gpubl) #do not display blacklisted items
    @gpu = Gpu.where(mb_compad: Motherboard.find_by(id: @computer.motherboard_id).gpu_compad) & Gpu.where.not(id: @gpubl) #do not display either
  end

  def hd
    init_prices
    #@hd = Hd.all
    motherboard_selected("Hard drive page")
    @motherboard = Motherboard.find_by(id: @computer.motherboard_id)
    #@hd = Hd.where(mb_compad: Motherboard.find_by(id: @computer.motherboard_id).hd_compad)  #do not display id = 1 
    #@hd = Hd.where.not(id: @hdbl) #do not display blacklisted items
    @hd = Hd.where(mb_compad: Motherboard.find_by(id: @computer.motherboard_id).hd_compad) & Hd.where.not(id: @hdbl) #do not display either
  end


  def power   #do not display id = 1 
    # @power = Power.all
    init_prices
    @mobowatts = Motherboard.find_by(id: @computer.motherboard_id).watts
    @cpuwatts = Cpu.find_by(id: @computer.motherboard_id).watts
    @ramwatts = Ram.find_by(id: @computer.motherboard_id).watts
    @gpuwatts = Gpu.find_by(id: @computer.motherboard_id).watts
    @hdwatts = Hd.find_by(id: @computer.motherboard_id).watts
    @powerwatts = (@mobowatts+@cpuwatts+@ramwatts+@gpuwatts+@hdwatts)*1.1 
    #power supply cannot be used for more than 90%
    #@power = Power.where("watts >= ?", @powerwatts)
    #@power = Power.where.not(id: @powerbl) #do not display blacklisted items
    @power = Power.where("watts >= ?", @powerwatts) & Power.where.not(id: @powerbl) #do not display either
  end

end
