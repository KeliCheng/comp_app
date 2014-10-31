class AddIndexToComputersName < ActiveRecord::Migration
  def change
  	add_index :computers, :name, unique: true
  end
end
