class Power < ActiveRecord::Base
	validates :name, presence: true
	validates :price, presence: true
	validates :watts, presence: true
  	attr_accessible :price, :watts, :name, :creator
  
end
