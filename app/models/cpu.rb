class Cpu < ActiveRecord::Base
  attr_accessible :speed, :price, :mb_compad, :watts, :cores, :name, :creator
end
