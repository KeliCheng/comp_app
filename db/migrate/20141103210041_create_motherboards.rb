class CreateMotherboards < ActiveRecord::Migration
  def change
    create_table :motherboards do |t|
      t.decimal :price

      t.timestamps
    end
  end
end
