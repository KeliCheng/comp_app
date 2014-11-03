class CreateHds < ActiveRecord::Migration
  def change
    create_table :hds do |t|
      t.decimal :price
      t.string :size

      t.timestamps
    end
  end
end
