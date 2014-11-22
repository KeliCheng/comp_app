class AddWatts < ActiveRecord::Migration
  def change
  	add_column :motherboards, :watts, :int
  	add_column :cpus, :watts, :int
  	add_column :gpus, :watts, :int
  	add_column :hds, :watts, :int
  	add_column :rams, :watts, :int
  end
end
