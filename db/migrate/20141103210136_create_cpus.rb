class CreateCpus < ActiveRecord::Migration
  def change
    create_table :cpus do |t|
      t.decimal :price
      t.string :speed

      t.timestamps
    end
  end
end
