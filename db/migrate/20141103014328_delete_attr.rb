class DeleteAttr < ActiveRecord::Migration
  def change
  	remove_column :computers, :hd_id
  	remove_column :computers, :motherboard_id
  	remove_column :computers, :ram_id
  	remove_column :computers, :gpu_id
  	remove_column :computers, :cpu_id
  	remove_column :computers, :power_id

  end
end
