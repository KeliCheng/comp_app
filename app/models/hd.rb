class Hd < ActiveRecord::Base
	validates :name, presence: true
	validates :price, presence: true
	validates :mb_compad, presence: true
	validates :watts, presence: true
	validates :size, presence: true
  attr_accessible :price, :size, :mb_compad, :watts, :name, :creator
end
