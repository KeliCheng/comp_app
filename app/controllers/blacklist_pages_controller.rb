class BlacklistPagesController < ApplicationController
  def init_blacklist
    @motherbl = Blacklist.find_by(user_id: current_user).mobo_id.split(',')
    @cpubl = Blacklist.find_by(user_id: current_user).cpu_id.split(',')
    @rambl = Blacklist.find_by(user_id: current_user).ram_id.split(',')
    @gpubl = Blacklist.find_by(user_id: current_user).gpu_id.split(',')
    @hdbl = Blacklist.find_by(user_id: current_user).hd_id.split(',')
    @powerbl = Blacklist.find_by(user_id: current_user).power_id.split(',')
  end

  def blacklist
    init_blacklist
    @mobo = Motherboard.where(id: @motherbl)
    @cpu = Cpu.where(id: @cpubl)
    @ram = Ram.where(id: @rambl)
    @gpu = Gpu.where(id: @gpubl)
    @hd = Hd.where(id: @hdbl)
    @power = Power.where(id: @powerbl)
    @blacklist = Blacklist.find_by(user_id: current_user.id)
    @blacklist.save
  end

  def motherboard
    init_blacklist
    @blacklist = Blacklist.find_by(user_id: current_user.id)
    @mobo = Motherboard.where.not(id: @motherbl)
  end

  def cpu
    init_blacklist
    @blacklist = Blacklist.find_by(user_id: current_user.id)
    @cpu = Cpu.where.not(id: @cpubl)
  end

  def ram
    init_blacklist
    @blacklist = Blacklist.find_by(user_id: current_user.id)
    @ram = Ram.where.not(id: @rambl)
  end

  def gpu
    init_blacklist
    @blacklist = Blacklist.find_by(user_id: current_user.id)
    @gpu = Gpu.where.not(id: @gpubl)
  end

  def hd
    init_blacklist
    @blacklist = Blacklist.find_by(user_id: current_user.id)
    @hd = Hd.where.not(id: @hdbl)
  end

  def power
    init_blacklist
    @blacklist = Blacklist.find_by(user_id: current_user.id)
    @power = Power.where.not(id: @powerbl)
  end

end