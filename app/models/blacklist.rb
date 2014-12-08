class Blacklist < ActiveRecord::Base
	attr_accessible :user_id, :hd_id, :mobo_id, :ram_id, :gpu_id, :cpu_id, :power_id
	belongs_to :user
	has_one :motherboard
	has_one :cpu
	has_one :gpu
	has_one :hd
	has_one :power
	has_one :ram
end
