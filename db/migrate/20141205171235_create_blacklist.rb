class CreateBlacklist < ActiveRecord::Migration
  def change
    create_table :blacklists do |t|
      t.integer :user_id
      t.integer :mobo_id
      t.integer :cpu_id
      t.integer :ram_id
      t.integer :gpu_id
      t.integer :hd_id
      t.integer :power_id
    end
  end
end
