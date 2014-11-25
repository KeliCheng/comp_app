class Motherboard < ActiveRecord::Base
  attr_accessible :price, :cpu_compad, :gpu_compad, :ram_compad, :hd_compad, :watts, :name
end
