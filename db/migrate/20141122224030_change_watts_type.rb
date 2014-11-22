class ChangeWattsType < ActiveRecord::Migration
  def up
    change_column :powers, :watts, :int
  end

  def down
    change_column :powers, :watts, :string
  end
end
