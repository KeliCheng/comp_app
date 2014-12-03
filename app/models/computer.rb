# == Schema Information
#
# Table name: computers
#
#  id         :integer          not null, primary key
#  name       :string(255)      name of the computer
#  status     :boolean          if the computer has all the required component, mark TRUE
#  price      :integer          Current total price
#  user_id    :integer          indicate which user the computer belongs to
#  created_at :datetime
#  updated_at :datetime
#

class Computer < ActiveRecord::Base

	attr_accessible :name, :status, :price, :user_id,
	 :hd_id, :motherboard_id, :ram_id, :gpu_id, :cpu_id, :power_id
	belongs_to :user
	#validates :name, presence: true, length: { maximum: 59 }, uniqueness: { case_sensitive: false }
	#validates :status, presence: true
	#validates :price, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
	validates :user_id, presence: true
	#default_scope order: 'computers.created_at DESC'
	#before_save { |computer| computer.name = name.downcase }
	has_one :motherboard
	has_one :cpu
	has_one :gpu
	has_one :hd
	has_one :power
	has_one :ram
	ratyrate_rateable 'user_rating'
end
