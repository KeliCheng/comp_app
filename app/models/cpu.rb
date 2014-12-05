class Cpu < ActiveRecord::Base
  attr_accessible :speed, :price, :mb_compad, :watts, :cores, :name, :creator
  # validates :speed, :presence => true
  # # validates_format_of :speed, :with => /\A[0-9]{1,2}\.[0-9]{1}\Z/
  # validates :price, :presence => true
  # validates :mb_compad, :presence => true
  # validates :watts, :presence => true
  # validates :cores, :presence => true
  # validates :name, :presence => true
end
