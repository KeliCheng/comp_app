class ChangeIntegerInBlacklists < ActiveRecord::Migration
  def change
  	change_column :blacklists, :mobo_id, :text
  	change_column :blacklists, :cpu_id, :text
  	change_column :blacklists, :ram_id, :text
  	change_column :blacklists, :gpu_id, :text
  	change_column :blacklists, :hd_id, :text
  	change_column :blacklists, :power_id, :text
  end
end
