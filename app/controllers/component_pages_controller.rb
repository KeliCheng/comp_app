class ComponentPagesController < ApplicationController


  def motherboard
    @mother = Motherboard.all
    if (Computer.find_by(user_id: current_user.id) != nil)
      @computer = Computer.find_by(user_id: current_user.id)
    else
      @computer = Computer.new
    end
  end

  def cpu
    @computer = Computer.find_by(user_id: current_user.id)
    @cpu = Cpu.all
        #Cpu.where(Computer.find_by(user_id: current_user.id).A == Cpu.A)
  end

  def rvm
    @computer = Computer.find_by(user_id: current_user.id)
    @rvm = Ram.all
  end

  def hd
    @computer = Computer.find_by(user_id: current_user.id)
    @hd = Hd.all
  end

  def power
    @computer = Computer.find_by(user_id: current_user.id)
    @power = Power.all
  end

  def gpu
    @computer = Computer.find_by(user_id: current_user.id)
    @gpu = Gpu.all
  end



end
