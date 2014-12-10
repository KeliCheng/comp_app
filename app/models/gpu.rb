class Gpu < ActiveRecord::Base
	validates :name, presence: true
	validates :price, presence: true
	validates :mb_compad, presence: true
	validates :watts, presence: true
	validates :vram, presence: true
  attr_accessible :vram, :price, :mb_compad, :watts, :name, :creator
end
