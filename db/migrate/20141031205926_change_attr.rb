class ChangeAttr < ActiveRecord::Migration
  def change
  	remove_column :computers, :date; 
  end
end
