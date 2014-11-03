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
<<<<<<< HEAD
	belongs_to :user 
=======
	belongs_to :user
>>>>>>> 332f02dce5eea5c27e27515bf0de0e9744734cb2
	validates :name, presence: true, length: { maximum: 59 }, uniqueness: { case_sensitive: false }
	validates :status, presence: true
	validates :price, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
	validates :user_id, presence: true
	#default_scope order: 'computers.created_at DESC'
	before_save { |computer| computer.name = name.downcase }




end
