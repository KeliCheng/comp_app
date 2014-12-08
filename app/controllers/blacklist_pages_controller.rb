class BlacklistPagesController < ApplicationController

  def blacklist
    @mobo = Motherboard.all
    @cpu = Cpu.all
    @ram = Ram.all
    @gpu = Gpu.all
    @hd = Hd.all
    @power = Power.all
    @blacklist = Blacklist.find_by(user_id: current_user.id)
    @blacklist.save
  end

  def motherboard
    @blacklist = Blacklist.find_by(user_id: current_user.id)
    @mobo = Motherboard.all
  end

  def cpu
    @blacklist = Blacklist.find_by(user_id: current_user.id)
    @cpu = Cpu.all
  end

  def ram
    @blacklist = Blacklist.find_by(user_id: current_user.id)
    @ram = Ram.all
  end

  def gpu
    @blacklist = Blacklist.find_by(user_id: current_user.id)
    @gpu = Gpu.all
  end

  def hd
    @blacklist = Blacklist.find_by(user_id: current_user.id)
    @hd = Hd.all
  end

  def power
    @blacklist = Blacklist.find_by(user_id: current_user.id)
    @power = Power.all
  end

end