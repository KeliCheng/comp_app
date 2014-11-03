class CreatePowers < ActiveRecord::Migration
  def change
    create_table :powers do |t|
      t.decimal :price
      t.string :voltage

      t.timestamps
    end
  end
end
