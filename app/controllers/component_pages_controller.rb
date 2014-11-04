class ComponentPagesController < ApplicationController


def motherboard
  @mother = Motherboard.all
end

  def cpu
    @cpu = Cpu.all
  end

  def rvm
    @rvm = Ram.all
  end

  def hd
    @hd = Hd.all
  end

  def power
    @power = Power.all
  end

  def gpu
    @gpu = Gpu.all
  end



end
