class Cpu < ActiveRecord::Base
	validates :name, presence: true
	validates :price, presence: true
	validates :mb_compad, presence: true
	validates :watts, presence: true
	validates :cores, presence: true
	validates :speed, presence: true
	validates_format_of :speed, :with => /((\b[0-9]+)?\.)?[0-9]+\b/
	
  	attr_accessible :speed, :price, :mb_compad, :watts, :cores, :name, :creator
  
end
