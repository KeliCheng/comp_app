class CreateRams < ActiveRecord::Migration
  def change
    create_table :rams do |t|
      t.decimal :price
      t.string :size

      t.timestamps
    end
  end
end
