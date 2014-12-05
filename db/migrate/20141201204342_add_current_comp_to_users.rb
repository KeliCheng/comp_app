class AddCurrentCompToUsers < ActiveRecord::Migration
  def change
    add_column :users, :current_comp, :int
  end
end
