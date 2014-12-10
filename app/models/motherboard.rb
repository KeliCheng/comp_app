class Motherboard < ActiveRecord::Base
	validates :name, presence: true
	validates :price, presence: true
	validates :cpu_compad, presence: true
	validates :gpu_compad, presence: true
	validates :ram_compad, presence: true
	validates :hd_compad, presence: true
	validates :watts, presence: true
  	attr_accessible :price, :cpu_compad, :gpu_compad, :ram_compad, :hd_compad, :watts, :name, :creator
end

Motherboard.create(name: "Example name").valid? # => true