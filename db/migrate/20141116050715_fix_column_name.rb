class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :powers, :voltage, :watts
  end
end
