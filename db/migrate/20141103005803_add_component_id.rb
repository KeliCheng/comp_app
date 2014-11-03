class AddComponentId < ActiveRecord::Migration
  def change
  	add_column :computers, :hd_id, :int
  	add_column :computers, :motherboard_id, :int
  	add_column :computers, :rvm_id, :int 
  	add_column :computers, :gpu_id, :int
  	add_column :computers, :cpu_id, :int
  	add_column :computers, :power_id, :int
  end
end
